class MessagesController < ApplicationController

  def index
    @messages = Message.all

  end

  def new
    @message = Message.new
  end

  def create
    @conversation = Conversation.find(params[:content_id])
    @message = Message.new(message_params)
    @message.conversation = @conversation
    @message.role = "user"
    @message.save

  end

  def show
    @message = Message.find(params[:id])
  end

  private

  def message_params
    params.require(:message).permit(:content, :role)
  end

end
