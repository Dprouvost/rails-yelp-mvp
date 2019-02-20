Rails.application.routes.draw do

  get "restaurants", to: "restaurants#index", as: :restaurants
  get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  post "restaurants/create", to: "restaurants#create"
  get "restaurants/:id", to: "restaurants#show", as: :restaurant
  get "restaurants/:restaurant_id/reviews", to: "reviews#index"
  get "restaurants/:restaurant_id/reviews/new", to: "reviews#new"
  post "restaurants/:restaurant_id/reviews", to: "reviews#create"

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
