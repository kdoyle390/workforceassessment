class OrganizationsController < ApplicationController

    def index 
        @organizations = Organization.all
    end

    def create
        organization = Organization.create!(org_params)
        if organization.valid?
                render json: organization, status: :accepted
        else 
            render json: organization.errors.full_messages
        end
    end

    def update
        organization = Organization.find_by(id:params[:id])
        if organization
            organization.update(org_params)
            render json: plant, status: :accepted
        else
            render {organization.errors.full_messages}
        end
    end


    private
        def org_params
            params.permit(:name, :hourly_rate)
    end


end
