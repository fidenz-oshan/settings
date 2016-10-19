$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "settings/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "settings"
  s.version     = Settings::VERSION
  s.authors     = ["oshan wisumperuma"]
  s.email       = ["oshan.w@fidenz.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Settings."
  s.description = "TODO: Description of Settings."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "sqlite3"
end
