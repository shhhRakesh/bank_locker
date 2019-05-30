class UserLocker < ApplicationRecord
  belongs_to :user
  belongs_to :locker
end
