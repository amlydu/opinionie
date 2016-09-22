# Opinionie

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/opinionie`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'opinionie'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install opinionie

## Usage

- `#judge`
  - Want some feedback on your opinions? Simply go into your command line and type the `opinionie judge` followed by whatever opinion you hold.
  - Ex) `$ bundle exec opinionie judge "Some random opinion!"`
- `#pluralize`
  - If you want to know how the plural of a word, please use this super random command with the `--word` and simply follow with the word you want to know the plural of.
  - Ex) `$ bundle exec opinionie pluralize --word "Potato"`
    - `=> Potatoes`
    - Is it magic???? Yes.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/opinionie.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

