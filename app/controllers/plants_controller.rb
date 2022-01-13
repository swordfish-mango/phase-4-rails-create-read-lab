class PlantsController < ApplicationController
    def index
        render json: Plant.all
    end

    def show
        plant = Plant.find(params[:id])
        if plant
            render json: plant
        else 
            render json: {error: "Bird not found"}, status: :not_found
        end
    end

    def create
        plant = Plant.create(params.permit(:name,:image,:price))
        render json: plant, status: :created
    end
      
end
