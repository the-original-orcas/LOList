class ComedianController < ApplicationController
	before_filter :authenticate_user!
  def new
  end

  def create
  end

  def index
  	@comedians = Comedian.all
  end
end
