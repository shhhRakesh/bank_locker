class CreateLockerRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :locker_requests do |t|
      t.references :user, foreign_key: true
      t.date :request_date
      t.integer :status

      t.timestamps
    end
  end
end
