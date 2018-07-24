namespace :load do
  task :defaults do
    set :clear_cached_resource_after_deploy, -> { true }
  end
end

namespace :deploy do
  after :publishing, :clear_cached_resource do
    invoke 'cached_resource:clear' if fetch(:clear_cached_resource_after_deploy)
  end
end

namespace :cached_resource do
  desc 'Clear a ActiveResource cache'
  task :clear do
    on roles(:app) do
      within current_path do
        execute :bundle, 'exec rails runner "ActiveResource::Base.descendants.each(&:clear_cache)"'
      end
    end
  end
end
