# frozen_string_literal: true

require_relative 'repository_images_cleaner'

if ARGV.empty?
  puts "Missing repository name!"
  return
end

RepositoryImagesCleaner.new.perform(ARGV)
