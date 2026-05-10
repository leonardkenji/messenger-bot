class ConversationsController < ApplicationController
  before_action :set_conversation

  def show
    @conversation.generate_insights! if @conversation.stale_insights? && @conversation.messages.any?
  end

  def toggle_status
    @conversation.toggle_status!
    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to conversation_path(@conversation) }
    end
  end

  def toggle_auto_reply
    @conversation.customer.toggle!(:auto_reply)
    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to conversation_path(@conversation) }
    end
  end

  private

  def set_conversation
    @conversation = Conversation.includes(:customer, :messages, :conversation_notes).find(params[:id])
  end
end
