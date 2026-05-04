class Customer < ApplicationRecord
has_many :conversations, dependent: :destroy
has_many :messages, through: :conversations

validates :fb_sender_id, presence: true
end
