# QueryCop

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'query_cop'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install query_cop

## Usage
In any of your rspec tests, you can add
```
   with_allowed_max_query_count(#{max_allowed_query_count}) do
    # stuff you are trying to test
  end
```
The spec will fail if the actual generated amount of queries exceed the number of queries that you allowed as max.

It will also print out all the generated queries.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/waiphyo69/query_cop. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the QueryCop project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/query_cop/blob/master/CODE_OF_CONDUCT.md).
