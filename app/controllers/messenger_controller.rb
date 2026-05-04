class MessengerController < ApplicationController
  #allows Facebook POST request to come to the program
  skip_before_action :verify_authenticity_token

  #Facebook checking if th webhook is working properly, checking the token and the params value
  def verify
    if params["hub.verify_token"] == ENV["FACEBOOK_VERIFY_TOKEN"]
      render plain: params["hub.challenge"]
    else
      render plain: "invalid token", status: :forbidden
    end
  end

  #if the verify is ok this method will GET the Json with the information from the Facebook Messenger interaction like user ID and Message content. I use this information
  #to create a new Instance of Customer and then Conversation and Message
  def receive
    messenger = params[:entry][0]&.dig(:messaging, 0)
    sender = messenger&.dig(:sender,:id)
    content = messenger&.dig(:message, :text)

    customer = Customer.find_or_create_by(fb_sender_id: sender)
    conversation = customer.conversations.create
    conversation.messages.create(content: content, role: "user", message_type: "text")

    render json: { status: "ok" }
  end
end
