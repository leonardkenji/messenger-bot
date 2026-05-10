class Customer < ApplicationRecord
  has_many :conversations, dependent: :destroy
  has_many :messages, through: :conversations

  validates :fb_sender_id, presence: true

  def display_name
    name.presence || "···#{fb_sender_id.to_s.last(8)}"
  end
end
