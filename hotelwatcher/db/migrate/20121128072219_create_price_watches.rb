class CreatePriceWatches < ActiveRecord::Migration
  def change
    create_table :price_watches do |t|
      t.integer :user_id
      t.integer :rate_from
      t.integer :rate_to
      t.string :location

      t.timestamps
    end
  end
end
