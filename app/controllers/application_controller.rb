class ApplicationController < ActionController::Base
    include ActionController::Cookies
    
    before_action :authorize
    
    private

    def authorize
        
        @current_user = User.find_by(id: session[:user_id])
        if !@current_user
            render json: { errors: ["Not authorized"] }, status: :unauthorized
        end
    end
end
