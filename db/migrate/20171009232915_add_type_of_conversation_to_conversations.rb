class AddTypeOfConversationToConversations < ActiveRecord::Migration[5.0]
  def change
    add_column :conversations, :type_of_conversation_id, :integer
  end
end
