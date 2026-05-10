class ConversationNotesController < ApplicationController
  def create
    @conversation = Conversation.find(params[:conversation_id])
    @note = @conversation.conversation_notes.create!(content: params.dig(:conversation_note, :content))
    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to conversation_path(@conversation) }
    end
  end
end
