class Clinic < ApplicationRecord

	def formatted_start_date
	  start_date.strftime("%b %d")
	end

	def formatted_end_date
	  end_date.strftime("%b %d")
	end

	
end
