class ComedianController < ApplicationController
  def new
  end

  def create
  end

  def index
  	@comedians = Comedian.all
  end
end
