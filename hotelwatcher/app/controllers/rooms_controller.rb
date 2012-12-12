class RoomsController < ApplicationController

	before_filter :authenticate_user!
	# before_filter :load_scope
	#respond_to :js, :html, :json

	# room will be able to add/edit/delete only in the hotel edit mode.
	# deleting the hotel will also delete all related rooms
	
	def index
		@rooms = Room.where("hotel_id = ?", params[:hotel_id])
	end

	def show
		@room = get_room
	end

	def new
		@room = Room.new
		@room.hotel_id = params[:hotel_id]
	end

	def create
		@room = Room.new(params[:room])
		@room.hotel_id = params[:hotel_id] # must include this otherwise the room won't be tied to the hotel
		if @room.save
			back_to_hotel
		else
			render :new
		end
	end

	def edit
		@room = get_room
		@room.hotel_id = params[:hotel_id]
	end

	def update
		@room = get_room
		if (@room.update_attributes(params[:room]))
			back_to_hotel
		else
			render :edit
		end
	end

	def destroy
		@room = get_room
		flash[:notice] = "Room could not be deleted" unless @room.destroy
		back_to_hotel
	end

	private

	def get_room
		Room.find(params[:id])
	end

	def back_to_hotel
		redirect_to(edit_hotel_path(params[:hotel_id]))
	end

end