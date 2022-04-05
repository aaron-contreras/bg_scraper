# frozen_string_literal: true

require_relative "lib/bg_scraper/version"

Gem::Specification.new do |spec|
  spec.name = "bg_scraper"
  spec.version = BgScraper::VERSION
  spec.authors = ["Aaron Contreras"]
  spec.email = ["aaronlcaq@gmail.com"]

  spec.summary = "A simple scraper to download your bank account statements from Banco General Panama."
  spec.description = <<~DESCRIPTION
    It's a very tedious process to log in to your online banking platform and download your account statements (Especially when you have more than one). Provided some very simple configuration details, you can automate this entire process and never feel like it's a chore to be on top of your finances.
  DESCRIPTION
  spec.homepage = "https://github.com/aaron-contreras/bg_scraper"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/aaron-contreras/bg_scraper"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
