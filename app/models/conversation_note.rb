class ConversationNote < ApplicationRecord
  belongs_to :conversation
  validates :content, presence: true
end
