class RenameRoomTypeTableToRoom < ActiveRecord::Migration
  def change
    rename_table :room_types, :rooms
  end
end
