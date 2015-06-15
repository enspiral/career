class AddMessagesToSends < ActiveRecord::Migration
  def change
    add_column :sends, :messages, :text
  end
end
