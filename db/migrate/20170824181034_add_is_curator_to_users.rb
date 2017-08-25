class AddIsCuratorToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_curator, :boolean
  end
end
