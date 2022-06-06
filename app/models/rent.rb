class Rent < ApplicationRecord
  belongs_to :boat
  belongs_to :user

  validates :reservation_date_begin, presence:  true
  validates :reservation_date_end, presence: true
end
