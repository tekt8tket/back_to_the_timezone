$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "back_to_the_timezone/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "back_to_the_timezone"
  s.version     = BackToTheTimezone::VERSION
  s.authors     = ["Paul G. Casper"]
  s.email       = ["paul.casper@gmail.com"]
  s.homepage    = "http://mauirails.com"
  s.summary     = "Shifts the timezone of specified activerecord attributes for reading and writing."
  s.description = "Allows you to specify columns in your activerecord model that will have their timezone shifted due to a legacy database schema that stores time in a local format instead of UTC. Overrides the getter and setter for the specified attributes to perform the shift operation on read and write."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.1"

  s.add_development_dependency "sqlite3"
end
