class CreateTypeOfConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :type_of_conversations do |t|
    	t.string :name
    	t.string :main_role
    	t.string :available_roles, array: true, default: []
      t.timestamps
    end
  end
end
