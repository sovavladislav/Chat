class AddUserToInvite < ActiveRecord::Migration[5.0]
  def change
    add_reference :invites, :user, foreign_key: true
  end
end
