namespace :cached_resource do
  desc 'Clear a ActiveResource cache'
  task :clear do
    on roles(:app) do
      within curent_path do
        execute :bundle, 'exec rails cached_resource:clear'
      end
    end
  end
end
