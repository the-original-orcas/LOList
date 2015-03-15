Rails.application.routes.draw do
  devise_for :user, controllers: {
    registrations: 'registrations'
  }

  authenticated :user do
    root to: 'comedian#index', as: :authenticated_root

    resources :user do
      put :follow, on: :member
      put :unfollow, on: :member
    end
  end

  root to: 'landing#index'

  resources :event
  resources :comedian
end
