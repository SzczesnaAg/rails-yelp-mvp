Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
end

=begin
               Prefix Verb URI Pattern                                       Controller#Action
   restaurant_rewievs POST /restaurants/:restaurant_id/rewievs(.:format)     rewievs#create
new_restaurant_rewiev GET  /restaurants/:restaurant_id/rewievs/new(.:format) rewievs#new
          restaurants GET  /restaurants(.:format)                            restaurants#index
                      POST /restaurants(.:format)                            restaurants#create
       new_restaurant GET  /restaurants/new(.:format)                        restaurants#new
           restaurant GET  /restaurants/:id(.:format)                        restaurants#show
=end
