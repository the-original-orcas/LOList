class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    end

  def edit
  	binding.pry
  	@user = current_user
  	@comedians = Comedian.all
  	@events = Event.all
  end

  def update
  end

end
