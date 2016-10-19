$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'settings/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'settings'
  s.version     = Settings::VERSION
  s.authors     = ['oshan wisumperuma']
  s.email       = ['oshan.w@fidenz.com']
  s.homepage    = 'https://github.com/fidenz-oshan/settings'
  s.summary     = 'Rails Application Settings Handler, Active Admin Support'
  s.description = 'Rails Application Settings Handler, Active Admin Support '
  s.license     = 'GNU GPL v3+'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '>= 4.2.0'
end
