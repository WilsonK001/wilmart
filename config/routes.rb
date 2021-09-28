Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  post '/rate' => 'rater#create', :as => 'rate'
  get 'main/index'
  resources :line_items
  resources :carts do
    collection do 
      post :create_order
    end
  end
  resources :orders
  resources :products do 
    collection do 
      post :create_rating
    end
  end
  devise_for :users
  root 'home#index'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

