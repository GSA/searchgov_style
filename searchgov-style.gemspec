# frozen_string_literal: true

require_relative 'lib/searchgov/style/version'

Gem::Specification.new do |spec|
  spec.name          = 'searchgov_style'
  spec.version       = SearchgovStyle::VERSION
  spec.authors       = ['MothOnMars']
  spec.email         = ['437455+MothOnMars@users.noreply.github.com']

  spec.summary       = 'Shared Rubocop configuration for Search.gov repositories'
  spec.homepage      = 'https://github.com/GSA/searchgov_style'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.6.0')

  spec.metadata = {
    'homepage_uri' => spec.homepage,
    'rubygems_mfa_required' => 'true',
    'source_code_uri' => 'https://github.com/GSA/searchgov_style'
  }

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = ['.default.yml', 'LICENSE.md', 'README.md']
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.2'
  spec.add_development_dependency 'rake', '~> 13.0'

  # Refer to the README for instructions on upgrading Rubocop
  spec.add_dependency 'rubocop', '1.31.0'
  spec.add_dependency 'rubocop-performance', '~> 1.9'
  spec.add_dependency 'rubocop-rails', '~> 2.9'
  spec.add_dependency 'rubocop-rake', '~> 0.5'
  spec.add_dependency 'rubocop-rspec', '~> 2.5'
end
