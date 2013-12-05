$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "little_light_7568/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "little_light_7568"
  s.version     = LittleLight7568::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of LittleLight7568."
  s.description = "TODO: Description of LittleLight7568."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.0.beta"

  s.add_development_dependency "sqlite3"
end
