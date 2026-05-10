class AddInsightsGeneratedAtToConversations < ActiveRecord::Migration[8.1]
  def change
    add_column :conversations, :insights_generated_at, :datetime
  end
end
