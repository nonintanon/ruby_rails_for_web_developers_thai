class HotelsController < ApplicationController

	# list all available hotels
	
	def index
		@hotels = Hotel.all
	end

	# show hotel information - should contain room and price
	
	def show 
		@hotel = get_hotel
	end

	# create new hotel

	def new		
		@hotel = Hotel.new
	end

	def create
		@hotel = Hotel.new(params[:hotel])
		if @hotel.save
			redirect_to(hotels_path)
		else
			render :new 
		end
	end

	# udpate hotel

	def edit
		@hotel = get_hotel
	end

	def update
		@hotel = get_hotel
		if @hotel.update_attributes(params[:hotel])
			redirect_to hotel_path
		else
			render :edit
		end
	end

	# destroy hotel

	def destroy
		@hotel = get_hotel
		flash[:notice] = "Hotel could not be deleted" unless @hotel.destroy
		redirect_to hotels_path
	end

	private 

	def get_hotel
		Hotel.find(params[:id])
	end
end