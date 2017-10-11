class FixColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :groups, :curator_id, :user_id
  end
end
