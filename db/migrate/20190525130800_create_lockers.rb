class CreateLockers < ActiveRecord::Migration[5.1]
  def change
    create_table :lockers do |t|
      t.references :locker_type, foreign_key: true
      t.string :locker_code
      t.string :locker_name
      t.references :bank_branch, foreign_key: true

      t.timestamps
    end
  end
end
