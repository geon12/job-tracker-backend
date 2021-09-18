class OrganizationsController < ApplicationController
    def show
        organizations = Organization.all
        render json: organizations
    end

    def create
        organization = Organization.create!(organization_params)
        render json: organization, status: :created
    end
    
    private

    def organization_params
        params.permit(:name,:description,:industry)
    end
end
