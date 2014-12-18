class UsersController < ApplicationController
  def new
      @user = User.new
  end

  def show
      @user = User.find(params[:id])
  end
  
  def create
  end

  def update
      
  end

  def edit
      @user = User.find(params[:id])
  end

  def admin_user
  end
  

end
