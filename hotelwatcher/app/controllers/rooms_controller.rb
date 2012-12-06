class RoomsController < ApplicationController

	def index
		@rooms = Room.all
	end

	def show
		@room = get_room
	end

	def new
		@room = Room.new
	end

	def create
		@room = Room.new(params[:room])
		if @room.save
			redirect_to(rooms_path)
		else
			render :new
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def get_room
		Hotel.find(params[:id])
	end

end