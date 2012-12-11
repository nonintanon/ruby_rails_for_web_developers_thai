class Room < ActiveRecord::Base
  attr_accessible :bed_type, :description, :normal_rate, :hotel_id, :current_rate, :total_rooms, :available_rooms

  belongs_to :hotel
  has_many :pictures, as: :imageable
  has_many :watches, as: :watchable
  has_many :watchers, through: :watches, source: :user
end
