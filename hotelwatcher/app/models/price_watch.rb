class PriceWatch < ActiveRecord::Base
  attr_accessible :location, :rate_from, :rate_to, :user_id
end
