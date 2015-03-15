Rails.application.routes.draw do
  # devise_for :user, controllers: {
  #   registrations: 'registrations',
  # }

  devise_for :users, class_name: 'FormUser', :controllers => { omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}

  authenticated :user do
    root to: 'user#show', as: :authenticated_root
    resources :user
  end

  unauthenticated do
    root to: 'landing#index', :as => "unauthenticated"
  end

  root to: 'landing#index'

  resources :event
  resources :comedian

end


# authenticated :user do
#   root to: "user#show", :as => :authenticated_root
#   resource :user
# end


# unauthenticated do
#   root to: 'landing#index', :as => "unauthenticated"
# end


# resources :event

# resources :comedian
