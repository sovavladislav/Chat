class RemoveTypeIdFromThemes < ActiveRecord::Migration[5.0]
  def change
    remove_column :themes, :type_id, :integer
  end
end
