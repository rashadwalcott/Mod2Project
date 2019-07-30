class UsersController < ApplicationController

    def index
        @users = User.all 
    end

    def show 
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create 
        @user = User.create(user_params)
        redirect_to @user
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user = User.update(params[:id])
        redirect_to @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to @user_path
    end


    private 

    def user_params
        params.require(:user).permit(:first_name, :last_name, :age, :user_name, :horoscope_id)
    end

    

    

    


















end
