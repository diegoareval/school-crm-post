class UsersController < ApplicationController
    def index
        @users = User.all.order(created_at: :asc)
    end
  
    def show
        print params
        @user = User.find(params[:id])
    end
  end
  