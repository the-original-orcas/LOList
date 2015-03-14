class UserController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    end

  def edit
  	@comedians = Comedian.all
  	@user = current_user
  end

  def update
  end

end
