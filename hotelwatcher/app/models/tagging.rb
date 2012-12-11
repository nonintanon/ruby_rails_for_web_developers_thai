class Tagging < ActiveRecord::Base
  attr_accessible :tag_id, :taggable_id, :taggable_type

  belongs_to :tag
  belongs_to :taggable, polymorphic: true

  def add_tag tag_name
    
    # find exists tag - if not exist, create a new one
    db_tag = Tag.where('lowered_name = ?', tag_name.downcase)
    if (db_tag.nil? == true)
      db_tag = Tag.new({ name: tag_name, lowered_name: tag_name.downcase })
      db_tag.save
    end

    taggable = Tagging.new({ taggable_type: 'Hotel', taggable_id: taggable.taggable_id })

  end

end
