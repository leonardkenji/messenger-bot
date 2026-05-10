class AddAutoReplyToCustomers < ActiveRecord::Migration[8.1]
  def change
    add_column :customers, :auto_reply, :boolean, default: true, null: false
  end
end
