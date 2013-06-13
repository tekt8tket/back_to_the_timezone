module BackToTheTimezone
	extend ActiveSupport::Concern # This loads the methods in ClassMethods and InstanceMethods sub modules into any class that includes this class

	module ClassMethods
		# Usage in model definition as follows, ex:
		# shift_timezone :legacy_registered_at, :legacy_timezone => 'Eastern Time (US & Canada)'
		# This will shift the timezone to the specified legacy_timezone or it will use the specified Time.zone in Rails config
		def shift_timezone(field_name, options = {})

			# Override the getter like 'registered_at'
			define_method(field_name) {
				if read_attribute(field_name)
					Time.zone.at(read_attribute(field_name).to_i - read_attribute(field_name).in_time_zone(options[:legacy_timezone] || Time.zone).utc_offset)
				end
			}

			# Override the setter like 'registered_at='
			define_method(field_name.to_s + '=') { |value|
				unless value.blank?
					value = Time.parse(value) if value.class == String

					if value
						legacy_time = Time.zone.at(value.to_i + value.in_time_zone(options[:legacy_timezone] || Time.zone).utc_offset)
					else
						legacy_time = nil
					end
					write_attribute(field_name, legacy_time)
				end
			}

		end
	end

end

# Make shift_timezone available to all ActiveRecord models
class ActiveRecord::Base
	include BackToTheTimezone
end

# Cause I can : )
String.class_eval do
	def to_mcfly
		self + " McFly [KNOCK] [KNOCK] [KNOCK], Anybody home McFly?!"
	end
end