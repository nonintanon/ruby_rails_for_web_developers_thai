class AddCounterCacheColumnsToWatches < ActiveRecord::Migration
  def change
    
    add_column :hotels, :watchers_count, :integer, :default => 0

    Hotel.reset_column_information
    Hotel.find(:all).each do |h|
      Hotel.update_counters h.id, :watchers_count => h.watchers.length
    end

    # add_column :users, :watches_count, :integer, :default => 0

    # User.reset_column_information
    # User.find(:all).each do |u|
    #   User.update_counters u.id, :watches_count => u.watches.lenght
    # end

  end
end
