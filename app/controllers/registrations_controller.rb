class RegistrationsController < Devise::RegistrationsController
  def update_resource(resource, params)
    if resource.encrypted_password.blank? # || params[:password].blank?
      resource.email = params[:email] if params[:email]
      if !params[:password].blank? && params[:password] == params[:password_confirmation]
        logger.info "Updating password"
        resource.password = params[:password]
        resource.save
      end
      if resource.valid?
        resource.update_without_password(params)
      end
    else
      resource.update_with_password(params)
    end
  end
end



# class RegistrationsController < Devise::RegistrationsController
# prepend_before_filter :require_no_authentication, :only => [ :new, :create, :cancel ]
# prepend_before_filter :authenticate_user!, :only => [:edit, :update, :destroy, :show]


#   # GET /resource/sign_up
#   def new
#     super
#   end

#   # POST /resource
#   def create
#     super
#   end

#   # GET /resource/edit
#   def edit
#     super
#   end

#   # PUT /resource
#   def update
#     super
#   end

#   # DELETE /resource
#   def destroy
#     super
#   end

#   # GET /resource/cancel
#   # Forces the session data which is usually expired after sign
#   # in to be expired now. This is useful if the user wants to
#   # cancel oauth signing in/up in the middle of the process,
#   # removing all OAuth session data.
#   # def cancel
#   #   super
#   # end

#   protected

#   # You can put the params you want to permit in the empty array.
#   # def configure_sign_up_params
#   #   devise_parameter_sanitizer.for(:sign_up) << :attribute
#   # end

#   # You can put the params you want to permit in the empty array.
#   # def configure_account_update_params
#   #   devise_parameter_sanitizer.for(:account_update) << :attribute
#   # end

#    def sign_up_params
#     params.require(:user).permit(:email, :password, :password_confirmation, :comedian_id => [])
#   end

#   def account_update_params
#     params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :comedian_id => [])
#   end

#   # The path used after sign up.
#   def after_sign_up_path_for(resource)
#     edit_user_path(current_user)
#   end

#   def after_update_path_for(resource)
#     user_path(resource)
#   end

#   # The path used after sign up for inactive accounts.
#   # def after_inactive_sign_up_path_for(resource)
#   #   super(resource)
#   # end
# end
