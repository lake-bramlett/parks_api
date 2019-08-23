class ApplicationController < ActionController::API
  include Response

  def not_found
    render json: { error: 'not_found' }
  end
  rescue_from ActiveRecord::RecordNotFound do |exception|
    json_response({ message: exception.message }, :not_found)
  end
end
