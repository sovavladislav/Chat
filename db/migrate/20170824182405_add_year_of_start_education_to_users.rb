class AddYearOfStartEducationToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :year_of_st_ed, :date
  end
end
