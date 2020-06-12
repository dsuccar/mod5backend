Rails.application.routes.draw do
    # get 'rappers/:id/bosses', to: 'rappers#bosses'
  resources :rappers, only: [:index, :show]
  resources :battles, only: [:index, :show, :create]
  resources :lyrics, only: [:index, :show]
  resources :users, only: [:index, :show, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
