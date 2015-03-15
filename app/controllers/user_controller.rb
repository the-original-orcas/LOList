class UserController < ApplicationController
prepend_before_filter :require_no_authentication, :only => [ :new, :create, :cancel ]
prepend_before_filter :authenticate_user!, :only => [:edit, :update, :destroy, :show]
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
    if @user.comedians.count < 3
      redirect_to '/user/'+current_user.id.to_s+'/edit'
    end
  end


  def update
    respond_to do |format|
      if @user.update
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
    # user = current_user
    current_user.comedians << Comedian.find(params["comedian_id"])
    current_user.save!
    # user.update_attributes
  end
  
  private
  def current_user_params
    params.require(:current_user).permit(:email, :password, :comedian_id => [])
  end

end
