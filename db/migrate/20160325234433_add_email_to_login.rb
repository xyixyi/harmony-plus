class AddEmailToLogin < ActiveRecord::Migration
  def change
    add_column :logins, :email, :string
  end
end
