class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @compatibility = Compatibility.new
        @horoscopes = Horoscope.all
    end

    def new
        @user = User.new
        @horoscopes = Horoscope.all
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            redirect_to user_path(@user)
           else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end


    def edit
        @user = User.find(params[:id])
        @horoscopes = Horoscope.all
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
        redirect_to @user
      else
        flash[:errors] = @user.errors.full_messages
        redirect_to edit_user_path
      end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to @user
    end


    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :age, :user_name, :horoscope_id)
    end
























end
