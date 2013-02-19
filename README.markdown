# BackToTheTimezone #

Allows working with legacy database schemas where a datetime column is stored in local as opposed to GMT time. Datetime fields stored in SQL databases should as a best practice be stored in GMT time. This plugin to rails/activerecord allows using database columns stored as a local (non-GMT) timezone as if they were stored as GMT.

## Installation ##

To install this gem enter the following line into your Gemfile:

	$ gem 'back_to_the_timezone', :git => 'git://github.com/tekt8tket/back_to_the_timezone'

In your model define the attributes (columns) that you wish to shift the timezone. If you wish to shift the timezone to be the same as the default Time.zone then:

	# model.rb
	shift_timezone :legacy_created_at # will use the Time.zone value set by rails
	# Time.zone can be set to a default in application.rb as follows
	# application.rb
	config.time_zone = 'Eastern Time (US & Canada)'
	
Or, define the legacy timezone for that specific column:
	shift_timezone :legacy_registered_at, :legacy_timezone => 'Eastern Time (US & Canada)'
