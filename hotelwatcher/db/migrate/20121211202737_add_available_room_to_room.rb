class AddAvailableRoomToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :available_rooms, :integer
    rename_column :rooms, :number_of_rooms, :total_rooms
  end
end
