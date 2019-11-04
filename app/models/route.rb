class Route < ApplicationRecord
	has_many :reservations
	has_many :bookings
		debugger
	def Route.create_rout

		f=1500
		(1..10).each do |i|
			rotname = SecureRandom.alphanumeric
			random = rand 100
			servcno = rotname + random.to_s
			totlno = i*2 + 25
			fromdate = Date.today+i
			enddate = fromdate+30
			issued_date = Date.today-i*2
 			route = Route.create(route_name:rotname,serviceno: servcno,total_seat:totlno,origin:i,destination:i+2,fare:f,start_date:fromdate,end_date:enddate)

 			debugger
	 		reserve = route.reservations.create(travel_date:fromdate,fare:f,aval_seat:"")
	 			User.all.each do |u|
 				user_id = u.id
 				
	    	booked = reserve.bookings.create(journey_date:fromdate,issue_date:issued_date,user_id:user_id)
	      
	   		(1..8).each do|t| 
	   		if t%2==0
	   			seat_no = "L"+t.to_s
				else
					seat_no = "U"+t.to_s
				end	
	    	random_no=rand 1000
	    	pnr_no= "pnrno"+random_no.to_s
	    	gst_value = f*5/100
	    	total_amount = f + gst_value
	    	reserve.tickets.create(pnr_no:pnr_no,seat_no:seat_no,user_id:user_id,fare:f,gst:gst_value,total_fare:total_amount)
				end	
			end	
		end
	end	
end
