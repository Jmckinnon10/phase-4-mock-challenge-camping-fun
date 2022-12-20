class ApplicationController < ActionController::API
  include ActionController::Cookies
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_response
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  
  
  
  
  private
  
  def invalid_response(invalid)
    render json: {errors: invalid.record.errors.full_messages}, status: 422
  end
  
  def record_not_found(error)
    render json: {errors: error.message}, status: :not_found
  end
end
