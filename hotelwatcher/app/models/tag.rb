class Tag < ActiveRecord::Base
  attr_accessible :name

  has_many :taggings

  def lowered_name
    @name.downcase
  end

end