# Capistrano::Vmf

[VMFarms.com](http://vmfarms.com) integration for bundler. If you're deploying a Rails app to VMFarms then this is a set of tasks that will conform to their best practices.

In particular,

* Unicorn server configured for zero downtime restarts
* Default directories already configured
* Installs Ruby and sets as default
* Generators to configure NewRelic

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-vmf'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-vmf

## Usage

Require in `Capfile` to use the default task:

    require 'capistrano/vmf'

TODO: Configure app for Capistrano
TODO: Configure config/deploy/* with server, domain, and services

Configurable options:
  set :ruby_version, "2.0.0-p247"         # Pick the version of Ruby you'll use
  set :site_name, "test.example.com"      # The hostname of your application (VMF has this, too)
                                          # Each environment will probably have it's own in `config/deploy/*.rb`


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
