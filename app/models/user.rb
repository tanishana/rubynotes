class User < ApplicationRecord
	has_many :bookings
	has_many :tickets
	
	
	def User.create_user
		User.create([{name:"suresh",contact:98764234556,emailid:"suresh@h.com" },{name:"suri",contact:9878753556,emailid:"sh@h.com" },{name:"mukesh",contact:666662234,emailid:"mukesh@h.com" },
			{name:"naresh",contact:977799996,emailid:"naresh@h.com" }])
	end	
end
