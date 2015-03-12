class UserController < ApplicationController
  def new
  end

  def create
  	@user = User.new
  end

  def edit
  end

  def update
  end
end
