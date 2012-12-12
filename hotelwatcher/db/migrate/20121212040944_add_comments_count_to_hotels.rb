class AddCommentsCountToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :comments_count, :integer, :default => 0

    Hotel.reset_column_information
    Hotel.find(:all).each do |h|
      Hotel.update_counters h.id, :comments_count => h.comments.length
    end

  end
end
