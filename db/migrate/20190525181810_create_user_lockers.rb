class CreateUserLockers < ActiveRecord::Migration[5.1]
  def change
    create_table :user_lockers do |t|
      t.references :user, foreign_key: true
      t.references :locker, foreign_key: true

      t.timestamps
    end
  end
end
