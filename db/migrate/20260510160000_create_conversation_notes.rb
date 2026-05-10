class CreateConversationNotes < ActiveRecord::Migration[8.1]
  def change
    create_table :conversation_notes do |t|
      t.references :conversation, null: false, foreign_key: true
      t.text :content, null: false
      t.timestamps
    end

    remove_column :conversations, :manager_notes, :text
  end
end
