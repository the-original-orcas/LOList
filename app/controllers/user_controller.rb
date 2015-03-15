class UserController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
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
    respond_to do |format|
      if @user.update(post_params)
        format.html { redirect_to @user, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  private

  def set_user
    @user = User.find(params[:id])
  end
end
