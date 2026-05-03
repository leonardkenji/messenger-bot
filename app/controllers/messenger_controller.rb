class MessengerController < ApplicationController
  skip_before_action :verify_authenticity_token

  def verify
    if params["hub.verify_token"] == ENV["FACEBOOK_VERIFY_TOKEN"]
      render plain: params["hub.challenge"]
    else
      render plain: "invalid token", status: :forbidden
    end
  end

  def receive
    render json: { status: "ok" }
  end
end
