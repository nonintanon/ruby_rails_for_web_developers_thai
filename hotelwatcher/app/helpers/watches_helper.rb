module WatchesHelper
  def watch_button_for resource
    # link_to "Test " + resource.class.name + " : " + current_user.inspect
    watching = current_user.watching_for(resource)
    if watching
      link_to "Unwatch", 
        polymorphic_path([resource, watching]), 
        method: :delete, 
        class: 'btn btn-primary'
    else
      link_to "Watch", 
        polymorphic_path([resource, Watch]), 
        method: :post, 
        class: 'btn btn-primary'
    end  
  end
end