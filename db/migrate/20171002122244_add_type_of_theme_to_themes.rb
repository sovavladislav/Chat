class AddTypeOfThemeToThemes < ActiveRecord::Migration[5.0]
  def change
    add_column :themes, :type_of_theme_id, :integer
  end
end
