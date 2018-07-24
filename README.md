# Capistrano::CachedResource
This Capistrano plugin is designed to clear a ActiveResource cache on your
instance with Rails app.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-cached_resource'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-cached_resource

And add that line to your 'Capfile':

``` ruby
require 'capistrano/cached_resource'
```


## Usage
After installation you can run a Capistrano task on any of your environments
stages:

``` bash
cap production cached_resource:clear
```

## Hooks
This gem will, by default add a hook to run a `cached_resource:clear` task after each deploy.
You can change this behaviour by adding this line to your `deploy.rb` file:
```ruby
set :clear_cached_resource_after_deploy, true # by default or false
```



## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
