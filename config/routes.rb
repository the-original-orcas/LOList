Rails.application.routes.draw do
  # devise_for :user, controllers: {
  #   registrations: 'registrations',
  # }
  devise_for :users, class_name: 'FormUser', :controllers => { omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}

  authenticated :user do
    root to: 'user#show', as: :authenticated_root
    resources :user
    get "/fave_comedian" => 'faves#from_comedians', as: 'fave_comedian'
  end

  unauthenticated do
    root to: 'landing#index'
  end

  resources :event
  resources :comedian 

end

# do
#     resource :fave, only: %w(update destroy)
#   end

# authenticated :user do
#   root to: "user#show", :as => :authenticated_root
#   resource :user
# end

# unauthenticated do
#   root to: 'landing#index', :as => "unauthenticated"
# end

# resources :event

# resources :comedian
