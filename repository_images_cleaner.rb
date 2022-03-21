# frozen_string_literal: true

# rubocop:disable Rails/TimeZone
# rubocop:disable Style/OptionalBooleanParameter

require 'faraday'
require 'json'
require 'time'

class RepositoryImagesCleaner
  def initialize(debug = false)
    @skip_logs = debug
    @conn = Faraday.new(url: 'https://api.digitalocean.com/v2') do |f|
      f.headers['Content-Type'] = 'application/json'
      f.headers['Authorization'] = "Bearer #{ENV['DO_ACCESS_TOKEN']}"
    end
  end

  def perform(registry_names)
    registry_names.each do |registry_name|
      repository_names = get_repository_names(registry_name)
      if repository_names.nil?
        puts "No repository name found for registry: '#{registry_name}'" unless @skip_logs
        next
      end

      repository_names.map do |repository_name|
        expired_tags = get_expired_repository_tags(registry_name, repository_name)
        unless expired_tags.size.positive?
          puts "No expired tag found for repository: '#{repository_name}'" unless @skip_logs
          next
        end

        puts "Cleaning up tags for repository '#{repository_name}'..." unless @skip_logs
        expired_tags.each do |expired_tag|
          tag_name = expired_tag['tag']
          puts "Deleting tag: '#{tag_name}'" unless @skip_logs
          delete_repository_tag(registry_name, repository_name, tag_name)
        end
      end
    end
  end

  private

  def get_repository_names(registry_name)
    res = @conn.get("registry/#{registry_name}/repositories")
    return unless res.status == 200

    parsed_res = JSON.parse(res.body)
    repositories = parsed_res['repositories']

    repositories.map { |repository| repository['name'] }
  end

  def get_repository_tags(registry_name, repository_name)
    res = @conn.get("registry/#{registry_name}/repositories/#{repository_name}/tags?per_page=200")
    return unless res.status == 200

    parsed_res = JSON.parse(res.body)
    parsed_res['tags']
  end

  def delete_repository_tag(registry_name, repository_name, tag_name)
    res = @conn.delete("registry/#{registry_name}/repositories/#{repository_name}/tags/#{tag_name}")
    return unless res.status == 204

    puts "Tag '#{tag_name}' has been deleted successfully! (#{registry_name}:#{repository_name})" unless @skip_logs
  end

  def get_expired_repository_tags(registry_name, repository_name)
    tags = get_repository_tags(registry_name, repository_name) || []
    branches = tags.map { |tag| tag['tag'].split('-')[0] }.uniq

    branches.map do |branch|
      branch_tags = tags.select { |tag| tag['tag'].include? branch }.select { |tag| tag['tag'] != branch }
      sorted_branch_tags = branch_tags.sort { |a, b| Time.parse(b['updated_at']) <=> Time.parse(a['updated_at']) }

      sorted_branch_tags.map.with_index do |tag, i|
        up_time_in_days = (Time.now - Time.parse(tag['updated_at'])) / (24 * 3600)
        tag if (i + 1) > 10 && up_time_in_days > 14
      end.compact
    end.flatten
  end
end

# rubocop:enable Rails/TimeZone
# rubocop:enable Style/OptionalBooleanParameter
