class Locker < ApplicationRecord
  belongs_to :locker_type
  belongs_to :bank_branch
end
