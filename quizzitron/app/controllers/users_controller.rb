class UsersController < ApplicationController
  def index
    @users = Users.all
  end

  def new
    @user = User.new
  end

  def create 
    @user = User.create(params.require(:user_name).permit(:email, :DOB))
    if @user.save
      redirect_to users_path
    else 
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])


  end

  def update
    @user = User.find(params[:id])
     if @user.update_attributes(params.require(:user_name).permit(:email, :DOB))
      redirect_to users_path
    else 
      render 'edit' 
      # here, 'edit' is the filename for the edit view
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to 'users_path'
  end


end
