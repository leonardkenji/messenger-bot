class Message < ApplicationRecord
  belongs_to :conversation

  validates :content, :role, presence: true
end
