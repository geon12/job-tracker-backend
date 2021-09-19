class JobApplicationsController < ApplicationController

    def index
        
        if @current_user
            job_applications = @current_user.job_applications
            render json: job_applications, include: ['job','job.organization','tasks','contacts']
        else
            render json: {errors: ['Not found']}, status: :not_found
        end
    end

    def create
        job_application = @current_user.job_applications.create!(job_application_params)
        render json: job_application, status: :created
    end

    def update
        job_application = find_job_application
        job_application.update(job_application_params)
        render json: job_application
    end
    
    private
    def find_job_application
        JobApplication.find(params[:id])
    end

    def job_application_params
        params.permit(:notes, :application_process, :status,:rejected,:job_id,:user_id)
    end

end
