class UsersController < ApplicationController
    def index
        @users = User.all.order(created_at: :asc)
    end
  
    def show
        @user = User.find(params[:id])
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path, notice: "User succesfully destroyed"

    end

  end
  