class Spending < ApplicationRecord
  belongs_to :user

  validates :place, presence: true
  validates :money, presence: true
end
