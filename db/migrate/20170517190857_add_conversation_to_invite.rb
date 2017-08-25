class AddConversationToInvite < ActiveRecord::Migration[5.0]
  def change
    add_reference :invites, :conversation, foreign_key: true
  end
end
