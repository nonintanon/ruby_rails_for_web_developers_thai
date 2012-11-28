class Hotel < ActiveRecord::Base
  attr_accessible :location_code, :name

  has_many :room_types
end
