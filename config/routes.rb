Rails.application.routes.draw do
  root 'pictures#index'
  resources :pictures

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
