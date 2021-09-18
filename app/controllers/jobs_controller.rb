class JobsController < ApplicationController
    def show
        jobs = Job.all
        render json: jobs
    end

    def create
        job = Job.create!(job_params)
        render json: job, status: :created
    end

    private

    def job_params
        params.permit(:role,:description,:listing_url,:location,:organization_id)
    end
end

