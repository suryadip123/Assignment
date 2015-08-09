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

  private
  def strong_params
  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end


end
