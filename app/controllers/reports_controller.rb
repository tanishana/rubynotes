class ReportsController < ApplicationController
	def index
  	@user=User.all
	end
		def runreport
			if(params[:fromdate].present?&&params[:todate].present?)
				if(params[:bydate].present?)
					booked_by =params[:bookedby]
					@from_date = params[:fromdate]
			  		@to_date =params[:todate]
			  		book_by=params[:bookedby]
					if(params[:bydate]=="traveldate")
			  		@report = Booking.where("journey_date >=? AND journey_date <=? And user_id =?",@from_date,@to_date,booked_by)
			  		reservation_ids	= @report.pluck(:reservation_id).uniq
			  		@tickets =Ticket.where("reservation_id IN(?) AND user_id=?",reservation_ids,booked_by).paginate(:page => params[:page], :per_page => 5)

					else
					@report = Booking.where("issue_date >=? AND issue_date <=? And user_id =?",@from_date,@to_date,booked_by)
					reservation_ids	= @report.pluck(:reservation_id).uniq
			  		@tickets =Ticket.where("reservation_id IN(?) AND user_id=?",reservation_ids,booked_by).paginate(:page => params[:page], :per_page => 5)
			  		end
					respond_to do |format|
						format.js
					end
				else
				flash[:notice]="please select date selector"
				end
			else
				flash[:notice]="please select date"	
			end
		end	
	
	
end
