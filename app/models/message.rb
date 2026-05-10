class Message < ApplicationRecord
  belongs_to :conversation, touch: true

  validates :content, :role, presence: true
end
