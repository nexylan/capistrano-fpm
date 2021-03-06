# Capistrano::FPM

Capistrano extension for PHP-FPM tasks

:warning: **This package has been moved to an official repository** :warning:

This page contains the documentation of the **version 1** of this plugin.
For future versions, please checkout this one:
https://github.com/capistrano-plugins/capistrano-php-fpm

The gem name has changed to `capistrano-php-fpm`. The versions 1 and lower correspond to this repository.

Therefore, this repository will not receive any update anymore.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano', '~> 3.2'
gem 'capistrano-fpm'
```

And then execute:

```bash
bundle
```

Or install it yourself as:

```bash
gem install capistrano-fpm
```

## Usage

Require the module in your `Capfile`:

```ruby
require 'capistrano/fpm'
```

`capistrano/fpm` comes with 5 tasks:

* fpm:reload
* fpm:restart
* fpm:start
* fpm:stop
* fpm:zap

You can execute the task on command line:

```bash
cap production fpm:reload
```

And configure it on your `deploy.rb` file:

```ruby
namespace :deploy do
  after :finishing, 'fpm:reload'
  after :rollback, 'fpm:reload'
end
```

### Configuration

Configurable options, shown here with defaults:

```ruby
set :fpm_roles, :all
```

You can also override the default `php-fpm` service command:
 
```ruby
SSHKit.config.command_map[:fpm] = 'sudo /etc/init.d/php-fpm'
```
