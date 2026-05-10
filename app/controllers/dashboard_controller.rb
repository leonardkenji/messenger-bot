class DashboardController < ApplicationController
  def index
    @conversations = Conversation.includes(:customer, :messages).order(updated_at: :desc)

    @conversations.each do |conversation|
      next if conversation.insights_generated_at.present?
      next if conversation.messages.empty?
      conversation.generate_insights!
    end
  end

  def scrape
    cars = WebsiteScrape.new.call
    Rails.logger.info "Scrape concluído: #{cars.size} carros"
    Rails.logger.info cars.first(2).inspect
    redirect_to dashboard_path
  end
end
