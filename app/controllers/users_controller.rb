class UsersController < ApplicationController
  
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

  def update
    @user = User.find params[:id]
    @user.update_attributes params[:user]
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end
end
