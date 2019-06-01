class AddLockerRefToLockerRequest < ActiveRecord::Migration[5.1]
  def change
    add_reference :locker_requests, :locker, foreign_key: true
  end
end
