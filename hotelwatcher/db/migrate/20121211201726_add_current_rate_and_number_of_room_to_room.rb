class AddCurrentRateAndNumberOfRoomToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :current_rate, :integer
    add_column :rooms, :number_of_rooms, :integer
  end
end
