class AddDetailsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :customer_id, :string
    add_reference :users, :bank_branch, foreign_key: true
  end
end
