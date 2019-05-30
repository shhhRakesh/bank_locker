class LockerVisitRequest < ApplicationRecord
  belongs_to :user
  # enum status: [:pending, :approved, :awaiting, :processed]
end
