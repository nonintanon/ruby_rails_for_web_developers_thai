class WatchesController < ApplicationController
  before_filter :authenticate_user!

  def create
    @watching = current_user.watches.build
    @watching.watchable = find_watchable
    if @watching.save
      redirect_to @watching.watchable
    end
  end

  def destroy
    @watching = current_user.watches.find(params[:id])
    if (@watching.destroy)
      redirect_to @watching.watchable
    end
  end

  private

  def find_watchable
    resource, id = request.path.split('/')[1, 2]
    resource.singularize.classify.constantize.find(id)
  end

end