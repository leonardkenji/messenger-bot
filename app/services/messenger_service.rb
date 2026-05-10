class MessengerService
  API_BASE = "https://graph.facebook.com/v19.0"
  API_URL  = "#{API_BASE}/me/messages"

  def self.send_message(recipient_id, text)
    Faraday.post(API_URL) do |req|
      req.headers["Content-Type"] = "application/json"
      req.params["access_token"] = ENV["FACEBOOK_PAGE_ACCESS_TOKEN"]
      req.body = {
        recipient: { id: recipient_id },
        message: { text: text }
      }.to_json
    end
  end

  def self.fetch_user_name(user_id)
    response = Faraday.get("#{API_BASE}/#{user_id}") do |req|
      req.params["fields"] = "name"
      req.params["access_token"] = ENV["FACEBOOK_PAGE_ACCESS_TOKEN"]
    end

    return nil unless response.success?

    JSON.parse(response.body)["name"]
  rescue => e
    Rails.logger.error("MessengerService.fetch_user_name failed for #{user_id}: #{e.message}")
    nil
  end
end
