class UserController < ApplicationController
  before_action :authenticate_user!
  def new
    @user = User.new
  end

  def create
  end

  def edit
    @user = current_user
    @comedians = Comedian.all
    @events = Event.all
  end

  def show
    @user = current_user
  end

  def update
    # respond_to do |format|
    #   if @user.update
    #     format.html { redirect_to @user, notice: 'Post was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @user }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @user.errors, status: :unprocessable_entity }
    #   end
    # end
    @user = current_user
    @user.update_attributes(user_params)
  end
  
  private
  def user_params
    params.require(:user).permit(:email, :password, :comedian_id => [])
  end

end
