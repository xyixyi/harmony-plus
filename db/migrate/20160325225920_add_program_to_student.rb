class AddProgramToStudent < ActiveRecord::Migration
  def change
    add_column :students, :program, :string
  end
end
