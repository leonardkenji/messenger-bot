class DashboardController < ApplicationController
  def index
    @conversations = Conversation.includes(:customer, :messages).order(updated_at: :desc)

    @conversations.each do |conversation|
      next if conversation.subject.present? && conversation.summary.present?
      conversation.generate_insights!
    end
  end
end
