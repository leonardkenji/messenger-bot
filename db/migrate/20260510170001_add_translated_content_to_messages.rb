class AddTranslatedContentToMessages < ActiveRecord::Migration[8.1]
  def change
    add_column :messages, :translated_content, :text
  end
end
