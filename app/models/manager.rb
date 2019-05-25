class Manager < ApplicationRecord
    has_one :branch, dependent: :destroy
end
