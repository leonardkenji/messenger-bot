class MessengerService
  API_URL = "https://graph.facebook.com/v19.0/me/messages"
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
end
