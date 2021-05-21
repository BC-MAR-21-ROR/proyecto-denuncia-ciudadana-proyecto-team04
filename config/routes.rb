Rails.application.routes.draw do
  resources :complaints
  resources :addresses
  resources :departaments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
