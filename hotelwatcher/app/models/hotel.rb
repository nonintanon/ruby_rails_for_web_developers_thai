class Hotel < ActiveRecord::Base
  attr_accessible :location_code, :name

  has_many :rooms
  has_many :comments, as: :commentable
  has_many :pictures, as: :imageable

  has_many :taggings, as: :taggable
  
  has_many :watches, as: :watchable
  has_many :watchers, through: :watches, source: :user

end
