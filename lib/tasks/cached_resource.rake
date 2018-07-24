namespace :cached_resource do
  desc 'Clear a ActiveResource cache'
  task clear: :environment do
    ActiveResource::Base.descendants.each &:clear_cache
  end
end
