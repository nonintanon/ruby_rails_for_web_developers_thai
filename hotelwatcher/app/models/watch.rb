class Watch < ActiveRecord::Base
	attr_accessible :user_id, :watchable_id, :watchable_type

  belongs_to :watchable, polymorphic: true

	belongs_to :user, :counter_cache => true
  belongs_to :hotel, :counter_cache => true

  belongs_to :watchable_hotel, foreign_key: :watchable_id, class_name: "Hotel", conditions: { watches: { watchable_type: "Hotel" } }
  belongs_to :watchable_room, foreign_key: :watchable_id, class_name: "Room", conditions: { watches: { watchable_type: "Room" } }
end
