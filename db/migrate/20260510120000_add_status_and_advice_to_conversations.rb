class AddStatusAndAdviceToConversations < ActiveRecord::Migration[8.1]
  def change
    add_column :conversations, :status, :string, default: "active", null: false
    add_column :conversations, :advice, :text
  end
end
