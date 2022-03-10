# searchgov_style

Shared [Rubocop](https://rubocop.org/) configuration for Search.gov repositories

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem 'searchgov_style'
end
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install searchgov_style

## Usage

In the root directory of the repo using this gem, create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  searchgov_style:
    - .default.yml
```

Now, run:

```bash
$ bundle exec rubocop
```

You do not need to include rubocop directly in your application's dependencies. searchgov_style will include specific versions of `rubocop` and related gems (such as `rubocop-rspec`) that are shared across all projects.

Refer to the [Rubocop documentation](https://docs.rubocop.org/) for Rubocop usage instructions.

## Development

Install the development gems:

    $ bundle

Run Rubocop on the gem repository itself:

    $ rubocop

### Upgrading Rubocop

To upgrade the version of Rubocop used by this gem, perform the
following steps to ensure [compatibility with CodeClimate](https://docs.codeclimate.com/docs/rubocop#using-rubocops-newer-versions):

1. Verify that the new version is supported by CodeClimate:  
   [list of Rubocop channels for CodeClimate](https://github.com/codeclimate/codeclimate-rubocop/branches/all?utf8=%E2%9C%93&query=channel%2Frubocop)
1. Verify that the new version is listed as a channel for the Rubocop engine for the CodeClimate CLI:  
   [CodeClimate Engines](https://github.com/codeclimate/codeclimate/blob/master/config/engines.yml)
1. Bump the version of Rubocop in the [gemspec](searchgov-style.gemspec)
1. Bump the Rubocop channel in [.codeclimate.yml](.codeclimate.yml)

Verify your configuration and compatibility locally using the [CodeClimate CLI](https://github.com/codeclimate/codeclimate):

    $ bundle update
    $ codeclimate validate-config
    $ codeclimate analyze lib/ -e rubocop

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/searchgov_style.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
