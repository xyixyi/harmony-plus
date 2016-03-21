class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :gender
      t.string :country
      t.string :country_code
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
