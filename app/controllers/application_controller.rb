class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # private

  #  def after_sign_in_path_for(resource)
  #    user_path
  #  end
  #  def after_sign_out_path_for(resource_or_scope)
		# '/'
  #  end

  before_filter :configure_devise_params, if: :devise_controller?
  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:postal_code, :email, :password, :password_confirmation, :current_sign_in_ip, :last_sign_in_ip, :latitude, :longitude, :subscribed)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:state_code, :city, :postal_code, :email, :password, :current_sign_in_ip, :last_sign_in_ip, :latitude, :longitude, :subscribed)
    end
  end

end