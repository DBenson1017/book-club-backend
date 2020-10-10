class UsersController < ApplicationController

def create 
    @user = User.create(user_params)
    render json: @user
end 

def index
    @users = User.all
    render json: @users
end 

def show
    @user = User.find(params[:id])
    render json: @user
end 

private

def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password_digest, :username)
end 

end


