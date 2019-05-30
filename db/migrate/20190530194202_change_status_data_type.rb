class ChangeStatusDataType < ActiveRecord::Migration[5.1]
  def change
    remove_column :locker_requests, :status, :string
    add_column :locker_requests, :status, :integer, default: 0
  end
end
