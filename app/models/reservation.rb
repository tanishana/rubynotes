class Reservation < ApplicationRecord
	has_many  :bookings
	belongs_to :route
	has_many :tickets

	
	end
