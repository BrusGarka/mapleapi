Rails.application.routes.draw do
  resources :provinces
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :numbeo
  resources :cities
  resources :colleges

end
