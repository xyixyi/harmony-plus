class AddCityAndGradeToStudent < ActiveRecord::Migration
  def change
    add_column :students, :city, :string
    add_column :students, :grade, :string
  end
end
