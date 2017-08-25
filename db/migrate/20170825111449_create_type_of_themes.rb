class CreateTypeOfThemes < ActiveRecord::Migration[5.0]
  def change
    create_table :type_of_themes do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
