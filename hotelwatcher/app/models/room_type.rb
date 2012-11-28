class RoomType < ActiveRecord::Base
  attr_accessible :bed_type, :description, :normal_rate, :hotel_id

  belongs_to :hotel
end
