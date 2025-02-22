Rails.application.routes.draw do
  resources :signups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :activities, only: [:index, :show]
  resources :campers, only: [:index, :show, :new, :create]
  get "/campers/:id/activity", to: "campers#activity"
end
