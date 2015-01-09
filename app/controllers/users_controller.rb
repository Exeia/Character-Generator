class UsersController < ApplicationController
  def new
      @user = User.new
  end

  def show
      @user = User.find(params[:id])
  end
  
  def create
      @user = User.new(user_params)
      if @user.save
         log_in @user
         flash[:success] = "Welcome to this demo page"
         
         redirect_to @user  
      else
          render 'new'
      end
  end

  def update
      
  end

  def edit
      @user = User.find(params[:id])
  end

  def admin_user
  end
  
private 

def user_params
    params.require(:user).permit(:name, :handle, :email, 
                                 :password, :password_confirmation)
end

end
