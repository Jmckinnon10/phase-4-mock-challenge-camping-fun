class CampersController < ApplicationController

  def index
    render json: Camper.all, status: :ok
  end

  def show
    campers = Camper.find(params[:id])
    render json: campers, status: :ok
  end

  def create
    campers = Camper.create!(camper_params)
    render json: campers, status: 201
  end

  

  private

  def camper_params
    params.permit(:name, :age)
  end



end
