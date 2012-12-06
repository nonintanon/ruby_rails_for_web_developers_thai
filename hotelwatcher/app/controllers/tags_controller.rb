class TaggingsController < ApplicationController

  def new
    @tag = @taggable.tags.build    
  end

  def create
  end

  def edit
  end

  def destroy
  end

  private 

  def load_scope
  end

end