class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_devise_params, if: :devise_controller?
  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:location, :state, :city, :postal_code, :email, :password, :password_confirmation, :current_sign_in_ip, :current_sign_in_at, :current_sign_in_ip_changed, :last_sign_in_ip, :latitude, :longitude, :subscribed)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:location, :state, :city, :postal_code, :email, :password, :current_sign_in_ip, :current_sign_in_at, :current_sign_in_ip_changed, :last_sign_in_ip, :latitude, :longitude, :subscribed)
    end
  end
end
