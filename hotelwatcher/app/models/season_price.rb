class SeasonPrice < ActiveRecord::Base
  attr_accessible :price, :roomtype_id, :valid_from, :valid_to
end
