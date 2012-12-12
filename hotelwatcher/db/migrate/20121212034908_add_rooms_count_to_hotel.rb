class AddRoomsCountToHotel < ActiveRecord::Migration
  def change
    add_column :hotels, :rooms_count, :integer, :default => 0

    Hotel.reset_column_information
    Hotel.find(:all).each do |h|
      Hotel.update_counters h.id, :rooms_count => h.rooms.length
    end
  end
end
