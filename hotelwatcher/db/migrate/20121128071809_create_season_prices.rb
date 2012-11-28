class CreateSeasonPrices < ActiveRecord::Migration
  def change
    create_table :season_prices do |t|
      t.integer :roomtype_id
      t.integer :price
      t.datetime :valid_from
      t.datetime :valid_to

      t.timestamps
    end
  end
end
