Rails.application.routes.draw do
  # get 'restaurants/:restaurant_id/new', to: 'reviews#new', as: 'whatever'
  resources :reviews, only: :destroy
  resources :restaurants do
    resources :reviews, only: [:create, :new]
    # get 'new', to: 'reviews#new', as: 'whatever'

    collection do
      get :top
    end

    member do
      get :chef
    end

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
