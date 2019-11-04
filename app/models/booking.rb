class Booking < ApplicationRecord
	belongs_to :user
	belongs_to :reservation
	has_many :tickets

	# Booking
	# def Booking.booked_ticket
	# 	Booking.create([{journey_date:"22-10-2019",seats:1,route_id:1,user_id:3},{journey_date:"25-10-2019",seats:2,route_id:4,user_id:5}])
	# end	
end
