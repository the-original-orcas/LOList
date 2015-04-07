class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    generic_callback( 'facebook' )
    
  end

  def google_oauth2
    generic_callback( 'google_oauth2' )
  end

  def twitter
    generic_callback( 'twitter' )
  end

  def generic_callback( provider )
    @identity = Identity.find_for_oauth env["omniauth.auth"]
    binding.pry
    @user = @identity.user || current_user
    if @user.nil?
      @user = User.create( email: @identity.email || "") #, image: @identity.image || ""
      @identity.update_attribute( :user_id, @user.id )
    end

    if @user.location.blank? && @identity.location
      binding.pry
      @user.update_attribute( :location, @identity.location)
    end

    if @user.email.blank? && @identity.email
      @user.update_attribute( :email, @identity.email)
    end

    if @user.state.blank? && @identity.state
      @user.update_attribute( :state, @identity.state)
    end

    if @user.city.blank? && @identity.city
      @user.update_attribute( :city, @identity.city)
    end

    if @user.persisted?
      @identity.update_attribute( :user_id, @user.id )
      @user = FormUser.find @user.id
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success, kind: provider.capitalize) if is_navigational_format?
    else
      session["devise.#{provider}_data"] = env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end
