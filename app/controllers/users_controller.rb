class UsersController < ApplicationController
    def index
        @users = User.all.order(created_at: :asc)
    end
  
    def show
        @user = User.find(params[:id])
    end

    def delete
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path, notice: "User succesfully destroyed"
    end

    def ban
        @user = User.find(params[:id])
        if @user.access_locked?
            @user.unlock_access!
        else
            @user.lock_access!
        end
        redirect_to users_path, notice: "User access locked: #{@user.access_locked?}"
    end

  end
  