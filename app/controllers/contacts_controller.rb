class ContactsController < ApplicationController
    def update
        contact = find_contact
        contact.update(contact_params)
        render json: contact
    end

    def create
        contact = Contact.create!(contact_params)
        render json: contact, status: :created
    end

    def destroy
        contact = find_contact
        contact.destroy
        head :no_content
    end

    private

    def find_contact
        Contact.find(params[:id])
    end

    def contact_params
        params.permit(:name,:role,:phone_number,:email,:description,:job_application_id)
    end
end
