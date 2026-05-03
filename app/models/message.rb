class Message < ApplicationRecord
  belongs_to :conversation

  validates :content, :message_type, :role, presence: true
end
