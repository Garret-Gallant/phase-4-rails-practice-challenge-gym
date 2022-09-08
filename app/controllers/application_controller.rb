class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_invalid_response

  private 

  def not_found_response(e)
    render json: { error: e }, status: 404
  end

  def render_invalid_response(e)
    render json: { error: e.record.errors.full_messages }, status: :unprocessable_entity
  end

end
