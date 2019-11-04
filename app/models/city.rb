class City < ApplicationRecord
	def City.cityinsert
		City.create([{city_name:"bangalore"},{city_name:"chennai"},{city_name:"mangalore"},
			{city_name:"pune"},{city_name:"mumbai"},{city_name:"indore"}])
	end	
end
