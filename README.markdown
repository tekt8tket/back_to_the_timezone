# BackToTheTimezone #

Allows working with legacy database schemas where a datetime column is stored in local as opposed to GMT time. Datetime fields stored in SQL databases should as a best practice be stored in GMT time. This plugin to rails/activerecord allows using database columns stored as a local (non-GMT) timezone as if they were stored as GMT.

## Installation ##

To install this gem enter the following line into your Gemfile:

	$ gem 'back_to_the_timezone', :git => 'git://github.com/tekt8tket/back_to_the_timezone'

