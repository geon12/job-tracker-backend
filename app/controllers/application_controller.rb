class ApplicationController < ActionController::API
    include ActionController::Cookies
    
    before_action :authorize
    #skip_before_action :verify_authenticity_token
    private

    def authorize
        @current_user = User.find_by(id: session[:user_id])
        if !@current_user
            render json: { errors: ["Not authorized"] }, status: :unauthorized
        end
    end
end
