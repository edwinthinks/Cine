Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"

  resources :users, only: [:show] do
    resources :reservations, only: [:index]
  end

  resources :movies do
    resources :events do
      resources :seats do
        resources :reservations, only: [:create, :show]
      end
    end
  end
end
