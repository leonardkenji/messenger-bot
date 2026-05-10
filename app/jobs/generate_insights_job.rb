class GenerateInsightsJob < ApplicationJob
  queue_as :default

  def perform(conversation_id)
    conversation = Conversation.includes(:messages).find(conversation_id)
    conversation.generate_insights! if conversation.stale_insights?
  end
end
