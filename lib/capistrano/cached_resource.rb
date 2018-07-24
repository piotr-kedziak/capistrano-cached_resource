if Gem::Specification.find_by_name('capistrano').version >= Gem::Version.new('3.0.0')
  load 'capistrano/tasks/cached_resource.rake'
end
