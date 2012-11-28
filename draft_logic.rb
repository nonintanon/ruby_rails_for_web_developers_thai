class Hotel
	attr_accessible :name, :location_code

	has_many :roomtypes
end

class RoomType
	attr_accessible :bed_type, :description

	belongs_to :hotel
	has_many :prices
end

class Price
	attr_accessible :price, :valid_from, :valid_to
	
	belongs_to :roomtype
end

class PriceWatch
	attr_accessible :user_id, :price_from, :price_to, :location_code

	belongs_to :user
end

class User # aka traveller
	attr_accessible :username, :email, :password

	has_many :pricewatches
end