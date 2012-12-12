Hotelwatcher::Application.routes.draw do
  devise_for :users

  #match 'rooms' => 'rooms#create', :as => :create, :via => :post

  resources :hotels do
    resources :rooms
    resources :comments, except: [:show]
    resources :watches, except: [:show]
  end

  root to: "home#index"
end
