class SignupsController < ApplicationController

  def create 
    signups = Signup.create!(signup_params)
    render json: signups.activity, status: :created
  end


  private

  def signup_params
    params.permit(:time, :camper_id, :activity_id)
  end

end
