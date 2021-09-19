class TasksController < ApplicationController
    def update
        task = find_task
        task.update!(task_params)
        render json: task
    end

    def create
        task = Task.create!(task_params)
        render json: task, status: :created
    end

    def destroy
        task = find_task
        task.destroy
        head :no_content
    end

    private

    def find_task
        Task.find(params[:id])
    end

    def task_params
        params.permit(:name,:date,:completed,:category,:job_application_id)
    end
end
