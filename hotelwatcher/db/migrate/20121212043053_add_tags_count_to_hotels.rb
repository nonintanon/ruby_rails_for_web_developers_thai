class AddTagsCountToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :tags_count, :integer, :default => 0

    Hotel.reset_column_information
    Hotel.find(:all).each do |h|
      Hotel.update_counters h.id, :tags_count => h.taggings.length
    end
  end
end
