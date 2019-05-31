class LockerRequest < ApplicationRecord
  belongs_to :user

  enum status: {pending: 0, approved: 1, awaiting: 2, processed: 3, rejected: 4}
  validate :user_status_validation 

  def user_status_validation
  	errors.add(:base, 'User account is not approved! Please contact you Bank Branch.') unless user.approved?
  end
end
