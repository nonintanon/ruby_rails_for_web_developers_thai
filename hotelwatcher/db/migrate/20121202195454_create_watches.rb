class CreateWatches < ActiveRecord::Migration
  def change
    create_table :watches do |t|
      t.integer :watchable_id
      t.string :watchable_type
      t.integer :user_id

      t.timestamps
    end
  end
end
