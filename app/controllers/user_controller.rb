class UserController < ApplicationController
  before_filter :authenticate_user!
  def new
    @user = User.new
  end

  def create
    if params[:password] == params[:confirm_password]
      @user = User.create(params_user)
      redirect_to events_index_path
    else
      redirect_to '/'
    end


  def edit
  end

  def update
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :course_id, :linked_in, :twitter, :facebook, :github,  :password, :email, :avatar)
  end
end
