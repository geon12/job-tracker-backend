class JobApplicationsController < ApplicationController
    def index
        job_applications = @current_user.job_applications
        render json: job_applications
    end

    def create
        job_application = @current_user.job_applications.create!(job_application_params)
        render json: job_application, status: :created
      end
    
      private
    
      def job_application_params
        params.permit(:notes, :application_process, :status,:rejected,:job,:user)
      end

end
