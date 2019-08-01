class UsersController < ApplicationController
 before_action :find_user, only: [:show,:edit,:update,:destroy]
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

        @horoscopes = Horoscope.all
    end

    def update

        if @user.update(user_params)
        redirect_to @user
      else
        flash[:errors] = @user.errors.full_messages
        redirect_to edit_user_path
      end
    end

    def destroy

        @user.destroy
        redirect_to @user
    end


    private

    def find_user
      @user = User.find(params[:id])
    end
    def user_params
        params.require(:user).permit(:first_name, :last_name, :age,:email, :user_name,:horoscope_id)
    end
























end
