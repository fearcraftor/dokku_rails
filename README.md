# DokkuRails

Dokku Rails allow to execute commands on your Dokku platform directly from your Ruby on Rails app.

## Changelog

v0.0.2 : Domains management added (create, fetch, remove)

## Installation

Prerequisites :

+ Existing Dokku platform on your server

Add this line to your application's Gemfile:

```ruby
gem 'dokku_rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dokku_rails

## Usage

+ Write your Dokku platform credentials in a new initializer :

```ruby
DokkuRails.configure do |c|
  c.host = "your server"
  c.user = "username you use to login through ssh"
end
```

+ Use these self-explanatory methods to perform some actions

```ruby
DokkuRails::Apps.create("app_name") # create new app
DokkuRails::Apps.fetch() # list all apps
DokkuRails::Apps.destroy("app name") # destroy given app

Dokku::Tar.deploy("app_name", "archive_url") # deploy tar archive to given app

Dokku::Config.create("app_name", config_array) # add some config vars for given app

Dokku::Run.create("app_name", "command to execute") # execute the command on the given app

Dokku::Postgres.create("db_name") # create new Postgres service
Dokku::Postgres.link("app_name", "db_name") # link given app with given Postgres service
Dokku::Postgres.destroy("db_name") # destroy given service
```

... more commands to come !

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/dokku_rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
