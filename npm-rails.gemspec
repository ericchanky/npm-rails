$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "npm_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "npm-rails"
  s.version     = NpmRails::VERSION
  s.authors     = ["ericchanky"]
  s.email       = ["eric.cky715@gmail.com"]
  s.homepage    = "https://github.com/ericchanky/npm-rails"
  s.summary     = "NPM wrapper for Rails"
  s.description = "NPM wrapper for Rails"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "sqlite3"
end
