class ContactsController < ApplicationController
    def update
        contact = find_contact
        contact.update(contact_params)
        render json: contact
    end

    private

    def find_contact
        Contact.find(params[:id])
    end

    def contact_params
        params.permit(:name,:role,:phone_number,:email,:description)
    end
end
