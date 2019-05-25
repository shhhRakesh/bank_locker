class CreateLockerTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :locker_types do |t|
      t.string :locker_type
      t.integer :yearly_rent
      t.integer :number_of_free_visits
      t.integer :extra_visit_charges

      t.timestamps
    end
  end
end
