class CreatePictures < ActiveRecord::Migration
	def change
		create_table :pictures do |t|
			t.string :file
			t.string :imageable_type
			t.integer :imageable_id
			t.timestamps
		end
	end
end
