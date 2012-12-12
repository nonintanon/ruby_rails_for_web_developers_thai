class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :tag_id
      t.string :taggable_type
      t.integer :taggable_id

      t.timestamps
    end
  end
end
