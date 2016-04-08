class AddColumnsToStudent < ActiveRecord::Migration
  def change
    add_column :students, :school, :string
    add_column :students, :addressLineOne, :string
    add_column :students, :addressLineTwo, :string
    add_column :students, :province, :string
    add_column :students, :zipCode, :integer
    add_column :students, :dateOfBirth, :date
    add_column :students, :guardianName, :string
  end
end
