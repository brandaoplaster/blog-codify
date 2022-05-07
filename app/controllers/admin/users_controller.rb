module Admin
  class UsersController < ApplicationController
    layout "dashboard_base"
    before_action :set_user, only: %i[ show destroy ]

    def index
      @users = User.all
    end

    def show
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)

      if @user.create
        redirect_to admin_users_url, notice: "User was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    def destroy
      if @user.destroy
        redirect_to users_url, notice: "User was successfully destroyed."
      else
        redirect_to :show, status: :unprocessable_entity
      end
    end

    private

    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :bio)
    end

    def set_user
      @user = User.find(params[:id])
    end
  end
end
