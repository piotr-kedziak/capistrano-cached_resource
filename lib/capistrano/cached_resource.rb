if Gem::Specification.find_by_name('capistrano').version >= Gem::Version.new('3.0.0')
  load File.expand_path('../tasks/cached_resource.rake', __FILE__)
end
