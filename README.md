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

For your `config/deploy.rb`, you'll want as a minimum:
```
# Point cap to your application
lock '3.1.0'
set :application, 'vmftest'
set :repo_url, 'git@bitbucket.org:yourname/repo.git'
set :pty, true

set :rvm1_ruby_version, "2.0.0-p247"
```

Then, in each `config/deploy/*.rb` (corresponding to your environment)
```
# The list of servers, one line each
server '1.2.3.4', user: 'deploy', roles: %w{web app}
# The primary domain name of this environment, that you gave to VMF
set :site_name, "vmf.ertw.com"
# The list of services that get restarted.
set :supervisor_services, %w[resque-dev]
```

Note that options set in `deploy.rb` are overridden in the environment file, and all these options are valid at either level.

Configurable options:
```
  set :ruby_version, "2.0.0-p247"         # Pick the version of Ruby you'll use
  set :site_name, "test.example.com"      # The hostname of your application (VMF has this, too)
                                          # Each environment will probably have it's own in `config/deploy/*.rb`
  set :supervisor_services, %q[unicorn resque]  # the list of services to restart (supervisord)
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
