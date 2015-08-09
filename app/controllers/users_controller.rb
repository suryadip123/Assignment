class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  	#debugger #Debugging
  end

  def create
  	@user = User.new(strong_params)
  	#debugger
  	if @user.save
      log_in @user
  		flash[:success] = "Welcome to News Bulletin Portal"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(strong_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
  

  private
  def strong_params
  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end


end
