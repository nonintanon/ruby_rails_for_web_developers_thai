class Hotel < ActiveRecord::Base
  attr_accessible :location_code, :name

  has_many :room_types
  has_many :comments, as: :commentable
  has_many :images, as: :imageable
end
