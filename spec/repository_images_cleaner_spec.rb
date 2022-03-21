# frozen_string_literal: true

require './repository_images_cleaner'
require './spec/shared_contexts'

RSpec.describe 'repository_image_cleaner' do
  include_context 'digitalocean'

  describe 'perform' do
    let(:registry_name) { 'warmango' }
    let(:repository_names) { digitalocean_get_repository_names_response }
    let(:repository_tags) do
      [
        digitalocean_get_repository_tags_response_1,
        digitalocean_get_repository_tags_response_2,
        digitalocean_get_repository_tags_response_3,
        digitalocean_get_repository_tags_response_4
      ]
    end

    subject { RepositoryImagesCleaner.new(true) }

    before do
      allow(subject).to receive(:get_repository_names).and_return(repository_names)
      allow(subject).to receive(:get_repository_tags).and_return(*repository_tags)
      allow(subject).to receive(:get_expired_repository_tags).and_call_original
      allow(subject).to receive(:delete_repository_tag).and_return(nil)
      subject.perform([registry_name])
    end

    context 'when registry names is found' do
      it 'should call #clean_up_repository_tags 4 times' do
        expect(subject).to have_received(:get_repository_names).once.with(registry_name)
        expect(subject).to have_received(:get_expired_repository_tags).once.with(registry_name, repository_names[0])
        expect(subject).to have_received(:get_expired_repository_tags).once.with(registry_name, repository_names[1])
        expect(subject).to have_received(:get_expired_repository_tags).once.with(registry_name, repository_names[2])
        expect(subject).to have_received(:get_expired_repository_tags).once.with(registry_name, repository_names[3])
      end

      context 'when expired repository tags is found' do
        it 'should call #delete_repository_tag' do
          expect(subject).to have_received(:delete_repository_tag).exactly(6).times
        end
      end

      context 'when expired repository tags not found' do
        let(:repository_tags) { [nil] }

        it 'should not call #delete_repository_tag' do
          expect(subject).not_to have_received(:delete_repository_tag)
        end
      end
    end

    context 'when registry names not found' do
      let(:registry_name) { 'not_a_registry_name' }
      let(:repository_names) { [nil] }

      it 'should not call #clean_up_repository_tags' do
        expect(subject).to have_received(:get_repository_names).once.with(registry_name)
        expect(subject).to have_received(:get_expired_repository_tags).once
        expect(subject).not_to have_received(:delete_repository_tag)
      end
    end
  end
end
