class CreateStudents < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.string :first_name, :limit=> 25
      t.string :last_name, :limit=> 25
      t.string :email, :limit=> 50, :null=>false
      t.string :gender
      t.string :country
      t.string :country_code
      t.string :phone_number

      t.timestamps null: false
    end
  end
  
  def down
    drop_table :students
  end
end
