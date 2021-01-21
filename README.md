# searchgov_style

Shared Rubocop configuration for Search.gov repositories

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

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/searchgov_style.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
