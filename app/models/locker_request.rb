class LockerRequest < ApplicationRecord
  belongs_to :user

  enum status: {pending: 0, approved: 1, awaiting: 2, processed: 3, rejected: 4}
end
