class UsersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_a_response_found

    def index
        users = User.all 
        render json: users, include: :items 
    end

    def show
        user = User.find(params[:id])
        render json: user, include: :items
    end


    private

    def render_not_a_response_found
        render json: { error: "User not found" }, status: :not_found
    end

end
