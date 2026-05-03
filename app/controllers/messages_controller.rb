class MessagesController < ApplicationController
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

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
  end

  private

  def message_params
    params.require(:message).permit(:content, :message_type, :role)
  end

end
end
