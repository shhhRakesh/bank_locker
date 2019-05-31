class AddStatusToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :status, :integer
    add_column :users, :pan_number, :string
  end
end
