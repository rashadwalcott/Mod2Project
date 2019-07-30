Rails.application.routes.draw do

  resources :users
  resources :compatibilities
  resources :horoscopes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
