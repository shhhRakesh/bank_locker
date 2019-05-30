class AddDetailsToAdmins < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :name, :string
    add_column :admins, :role, :string
    add_reference :admins, :bank_branch, foreign_key: true
  end
end
