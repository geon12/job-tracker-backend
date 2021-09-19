class UsersController < ApplicationController
    skip_before_action :authorize, only: :create
    
    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    def show
        render json: @current_user
    end

    def update
        user = find_user
        user.update!(user_params)
        render json: user
    end

    private

    def find_user
        User.find(params[:id])
    end

    def user_params
        params.permit(:username,:password,:name, :password_confirmation,:location,:email,:job_title)
    end
end
