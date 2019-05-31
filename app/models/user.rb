class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :locker_requests
  has_many :locker_visit_requests

  enum status: {pending: 0, approved: 1, rejected: 2}
end
