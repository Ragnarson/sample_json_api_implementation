class ApplicationController < ActionController::API
  before_action :set_content_type, :check_accept_header

  rescue_from ActiveRecord::RecordNotFound do
    render json: {
      errors: [
        {
          status: 404,
          details: "Not Found"
        }
      ]
    }
  end

  private

  def set_content_type
    response.headers["Content-Type"] = "application/vnd.api+json"
  end

  def check_accept_header
    unless request.headers["Accept"] == "application/vnd.api+json"
      return render json: {
        errors: [
          {
            status: 406,
            details: "Not Acceptable"
          }
        ]
      }
    end
  end

  def yaks
    Yaks.new do
      default_format :json_api
      map_to_primitive Date, Time, DateTime, ActiveSupport::TimeWithZone, &:iso8601
      json_serializer do |data|
        MultiJson.dump(data, pretty: true)
      end
    end
  end
end
