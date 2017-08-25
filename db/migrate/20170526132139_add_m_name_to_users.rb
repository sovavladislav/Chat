class AddMNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :mname, :string
  end
end
