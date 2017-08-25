class CreateThemes < ActiveRecord::Migration[5.0]
  def change
    create_table :themes do |t|
      t.string :themeName
      t.boolean :isStandardTheme

      t.timestamps
    end
  end
end
