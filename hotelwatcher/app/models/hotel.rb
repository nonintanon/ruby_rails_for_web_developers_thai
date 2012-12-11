class Hotel < ActiveRecord::Base
  attr_accessible :location_code, :name

  has_many :rooms
  has_many :comments, as: :commentable
  has_many :pictures, as: :imageable

  has_many :taggings, as: :taggable
  
  has_many :watches, as: :watchable
  has_many :watchers, through: :watches, source: :user

  # def add_tag tag_name

  #   if (id.nil? == true)
  #     puts "ID is null, create one first!"
  #   end

  #   tag = Tag.where('lowered_name = ?', tag_name.downcase)
  #   if (tag.nil? == true)
  #     # create a new tag
  #     tag = Tag.new({name: tag_name, lowered_name: tag_name.downcase})
  #     tag.save
  #   end

  #   taggable = Tagging.new({ taggable_type: 'Hotel', taggable_id: id, tag_id: tag.id })
  #   taggable.save
  # end
end