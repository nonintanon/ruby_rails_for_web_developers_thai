class AddHotelRoomTypeRelationship < ActiveRecord::Migration
	def change
		add_column :room_types, :hotel_id, :integer
	end
end
