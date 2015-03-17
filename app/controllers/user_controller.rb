class UserController < ApplicationController
  before_filter :allow_cors ## NEED TO ADD AUTH TOKEN TO JSON REQUESTS
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
    userId = @user.id
    @faves = @user.comedians
    @comedians = Comedian.all
    @nonfaves = @comedians - @faves

    if @user.comedians.count < 3
      redirect_to '/user/'+current_user.id.to_s+'/edit'
    end
  end


  def update

    @user = current_user
    if params['comedian_id']
      respond_to do |format|
        if comedian_user = @user.comedians_users.find_by_comedian_id(params["comedian_id"])
          binding.pry
          comedian_user.destroy!
          format.json { render json: 'removed'.to_json}
        else
          @user.comedians << Comedian.find(params["comedian_id"])
          format.json { render json: 'added'.to_json }
        end
      end
    else
      respond_to do |format|
        if @user.valid?
          format.html { redirect_to @user, notice: 'Post was successfully updated.' }
          format.json { render json: @user }
        else
          format.html { render :edit }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  def allow_cors
    headers["Access-Control-Allow-Origin"] = "*"
    headers["Access-Control-Allow-Methods"] = %w{GET POST PUT DELETE}.join(",")
    headers["Access-Control-Allow-Headers"] =
      %w{Origin Accept Content-Type X-Requested-With X-CSRF-Token}.join(",")
    headers['Access-Control-Request-Method'] = '*'
    
    head(:ok) if request.request_method == "OPTIONS"
    # or, render text: ''
    # if that's more your style
  end

  private
  def current_user_params
    params.require(:current_user).permit(:email, :password, :comedian_id => [])
  end

end
