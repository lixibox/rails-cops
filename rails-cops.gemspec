# frozen_string_literal: true

require_relative "lib/rails/cops/version"

Gem::Specification.new do |spec|
  spec.name = "rails-cops"
  spec.version = Rails::Cops::VERSION
  spec.authors = ["Lixibox"]
  spec.email = ["tech@lixibox.com"]

  spec.summary = "Custom cops for Lixibox Rails project."
  spec.description = "Custom cops for Lixibox Rails project."
  spec.homepage = "https://github.com/lixibox/rails-cops"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/lixibox/rails-cops"
  spec.metadata["changelog_uri"] = "https://github.com/lixibox/rails-cops"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_runtime_dependency 'activesupport', '>= 4.2.0'
  # Rack::Utils::SYMBOL_TO_STATUS_CODE, which is used by HttpStatus cop, was
  # introduced in rack 1.1
  spec.add_runtime_dependency 'rubocop', '>= 1.33.0', '< 2.0'
  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
