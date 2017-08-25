class AddTypeIdToTheme < ActiveRecord::Migration[5.0]
  def change
    add_column :themes, :type_id, :integer
  end
end
