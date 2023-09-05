# Rails::Cops

These are custom cops for Lixibox Rails project.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add rails-cops

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install rails-cops

## Usage

You need to tell RuboCop to load the Rails extension. There are three
ways to do this:

### RuboCop configuration file

Put this into your `.rubocop.yml`.

```yaml
require: rails-cops
```

Alternatively, use the following array notation when specifying multiple extensions.

```yaml
require:
  - rubocop-other-extension
  - rails-cops
```

Now you can run `rubocop` and it will automatically load the RuboCop Rails
cops together with the standard cops.

### Command line

```sh
$ rubocop --require rails-cops
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lixibox/rails-cops.

