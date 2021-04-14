Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end

=begin

               Prefix Verb URI Pattern                                       Controller#Action
   restaurant_reviews POST /restaurants/:restaurant_id/reviews(.:format)     reviews#create
new_restaurant_review GET  /restaurants/:restaurant_id/reviews/new(.:format) reviews#new
          restaurants GET  /restaurants(.:format)                            restaurants#index
                      POST /restaurants(.:format)                            restaurants#create
       new_restaurant GET  /restaurants/new(.:format)                        restaurants#new
           restaurant GET  /restaurants/:id(.:format)                        restaurants#show
=end

