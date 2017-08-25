class RemoveIsStandardThemeFromThemes < ActiveRecord::Migration[5.0]
  def change
    remove_column :themes, :isStandardTheme, :boolean
  end
end
