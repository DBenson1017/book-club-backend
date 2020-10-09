Rails.application.routes.draw do
  resources :reviews
  resources :notes
  resources :book_users
  resources :books
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
