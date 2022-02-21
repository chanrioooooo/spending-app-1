class Spending < ApplicationRecord
  belongs_to :user

  validates :useday, presence: true
  validates :place,  presence: true
  validates :money,  presence: true
end
