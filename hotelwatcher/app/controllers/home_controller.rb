class HomeController < ApplicationController
  def index
    @tags = Tag.all
    @hotels = Hotel.all
    @users = User.all
  end
end