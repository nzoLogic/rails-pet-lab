Rails.application.routes.draw do
  resources :owners do
    resources :pets, only: [:index, :new, :create]
  end
  resources :pets, only: :show
  
  root "site#index"

  resources :owners

end
