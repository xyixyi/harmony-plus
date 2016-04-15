class RemoveAgeFromStudent < ActiveRecord::Migration
  def change
    remove_column :students, :age, :integer
  end
end
