class BankBranch < ApplicationRecord
  belongs_to :manager
  has_many :lockers, dependent: :destroy
end
