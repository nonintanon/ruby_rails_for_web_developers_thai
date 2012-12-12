class AddLoweredNameToTags < ActiveRecord::Migration
  def change
    add_column :tags, :lowered_name, :string
  end
end
