class LockerType < ApplicationRecord
    has_many :lockers, dependent: :destroy
end
