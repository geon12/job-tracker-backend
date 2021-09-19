class ApplicationController < ActionController::API
    include ActionController::Cookies

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    
    before_action :authorize
    
    private

    def authorize
        @current_user = User.find_by(id: session[:user_id])
        if !@current_user
            render json: { errors: ["Not authorized"] }, status: :unauthorized
        end
    end

    def render_not_found
        render json: { error: "Not found" }, status: :not_found
      end

    def render_unprocessable_entity(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
