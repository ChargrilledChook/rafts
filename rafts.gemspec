# frozen_string_literal: true

require_relative "lib/rafts/version"

Gem::Specification.new do |spec|
  spec.name = "rafts"
  spec.version = Rafts::VERSION
  spec.authors = ["Dylan"]
  spec.email = ["58506115+ChargrilledChook@users.noreply.github.com"]

  spec.summary = "Faux MVC Framework"
  spec.description = "Faux MVC Framework for the book Rebuilding Rails"
  spec.homepage = "https://github.com/ChargrilledChook/rafts"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["allowed_push_host"] = "?"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rack", "~>2.2"
  spec.add_dependency "webrick", "~> 1.7"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "minitest-reporters"
  spec.add_development_dependency "rack-test"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
