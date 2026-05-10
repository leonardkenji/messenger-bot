class AddManagerNotesToConversations < ActiveRecord::Migration[8.1]
  def change
    add_column :conversations, :manager_notes, :text
  end
end
