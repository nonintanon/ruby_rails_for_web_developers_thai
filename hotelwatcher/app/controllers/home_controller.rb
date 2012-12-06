class HomeController < ApplicationController
  def index
    @tags = Tag.all
    @hotels = Hotel.all
    @users = User.all

    # first_hotel = @hotels.first
    # if (first_hotel.taggings.count == 0)
    #   first_hotel.taggings.

    # @tag = Taggable.all
  end
end