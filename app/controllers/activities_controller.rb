class ActivitiesController < ApplicationController

  def index 
    render json: Activity.all, status: :ok
  end

  def destroy
    signups = Signup.find(params[:id])
    signups.destroy
    signups.activity.destroy
    head :no_content
  end

  

end
