class UsersController < ApplicationController
  
  before_action :logged_in_user, only: [:destroy, :edit , :update, :index]
  before_action :correct_user,   only: [:edit, :update]
#  before_action :admin_user,     only: :destroy


# ---------- for listiong all uswers ------------ 
  def index
    @users = User.paginate(page: params[:page])
  end


  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

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
  
#--------------------------- private section ----------------------------- 
  private
  
  def strong_params
  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "please log in"
      redirect_to login_url
    end
  
  end

  def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
  end

  
  def admin_user
      redirect_to(root_url) unless current_user.admin?
  end

end
