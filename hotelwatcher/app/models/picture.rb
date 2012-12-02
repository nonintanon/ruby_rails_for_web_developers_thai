class Picture < ActiveRecord::Base
	attr_accessible :file
	belongs_to :imageable, polymorphic: true
end