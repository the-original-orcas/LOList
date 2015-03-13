class UserController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
  	binding.pry
    if params[:password] == params[:confirm_password]
      @user = User.create
      redirect_to events_index_path
    else
      redirect_to '/'
    end


  def edit
  end

  def update
  end

end
