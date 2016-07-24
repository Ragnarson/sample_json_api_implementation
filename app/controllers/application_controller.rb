class ApplicationController < ActionController::API
  before_action :set_content_type, :check_accept_header

  rescue_from ActiveRecord::RecordNotFound do
    render json: JSONAPI::Serializer.serialize_errors([{ status: "404", "detail": "Not Found" }])
  end

  private

  def set_content_type
    response.headers["Content-Type"] = "application/vnd.api+json"
  end

  def check_accept_header
    unless request.headers["Accept"] == "application/vnd.api+json"
      return render json: JSONAPI::Serializer.serialize_errors([{ status: "406", "detail": "Not Acceptable" }])
    end
  end
end
