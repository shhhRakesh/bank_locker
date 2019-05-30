class CreateLockerVisitRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :locker_visit_requests do |t|
      t.references :user, foreign_key: true
      t.datetime :visit_date_time
      t.string :visit_status

      t.timestamps
    end
  end
end
