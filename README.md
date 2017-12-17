# Nzholidays

This gem offers a way to determine whether a date is a New Zealand public
holiday.

```
  irb(main):001:0> time = Time.new(2017, 12, 25)
  => 2017-12-25 00:00:00 +1300
  irb(main):002:0> Nzholidays.nz_public_holiday?(time)
  => true
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nzholidays'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nzholidays

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/carld/nzholidays. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Nzholidays project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/carld/nzholidays/blob/master/CODE_OF_CONDUCT.md).
