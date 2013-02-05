$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "back_to_the_timezone/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "back_to_the_timezone"
  s.version     = BackToTheTimezone::VERSION
  s.authors     = ["Paul G. Casper"]
  s.email       = ["paul.casper@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of BackToTheTimezone."
  s.description = "TODO: Description of BackToTheTimezone."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.1"

  s.add_development_dependency "sqlite3"
end
