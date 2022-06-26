class UsersController < ApplicationController

    def create
        user = User.create!(user_params)
        if user.valid?
                render json: user, status: :accepeted
        else
            render json: user.errors.full_messages
        end
    end

    private

        def user_params
            params.permit(:organization_id, :name, :email, :password)
        end
        

end
