class CreateRoomTypes < ActiveRecord::Migration
  def change
    create_table :room_types do |t|
      t.string :bed_type
      t.text :description
      t.integer :normal_rate

      t.timestamps
    end
  end
end
