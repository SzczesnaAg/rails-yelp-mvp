Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_restaurant_review
  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: :restaurant_reviews
  post 'restaurants/:restaurant_id/reviews/new', to: 'reviews#create', as: :new_restaurant_create
end

=begin

            Prefix Verb   URI Pattern                                            Controller#Action
    restaurant_reviews GET    /restaurants/:restaurant_id/reviews(.:format)          reviews#index
                       POST   /restaurants/:restaurant_id/reviews(.:format)          reviews#create
 new_restaurant_review GET    /restaurants/:restaurant_id/reviews/new(.:format)      reviews#new
edit_restaurant_review GET    /restaurants/:restaurant_id/reviews/:id/edit(.:format) reviews#edit
     restaurant_review GET    /restaurants/:restaurant_id/reviews/:id(.:format)      reviews#show
                       PATCH  /restaurants/:restaurant_id/reviews/:id(.:format)      reviews#update
                       PUT    /restaurants/:restaurant_id/reviews/:id(.:format)      reviews#update
                       DELETE /restaurants/:restaurant_id/reviews/:id(.:format)      reviews#destroy
           restaurants GET    /restaurants(.:format)                                 restaurants#index
                       POST   /restaurants(.:format)                                 restaurants#create
        new_restaurant GET    /restaurants/new(.:format)                             restaurants#new
       edit_restaurant GET    /restaurants/:id/edit(.:format)                        restaurants#edit
            restaurant GET    /restaurants/:id(.:format)                             restaurants#show
                       PATCH  /restaurants/:id(.:format)                             restaurants#update
                       PUT    /restaurants/:id(.:format)                             restaurants#update
                       DELETE /restaurants/:id(.:format)                             restaurants#destroy
resources :restaurants do
    resources :reviews


Rails.application.routes.draw do
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_restaurant_review
  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: :restaurant_reviews
end

=end
