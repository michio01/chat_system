Rails.application.routes.draw do
  get 'home/top'
  get 'home/welcome'
  resources :users
  resources :mymodels
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
