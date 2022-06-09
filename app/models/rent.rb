# require_dependency "validators/availability_validator"
class Rent < ApplicationRecord
  belongs_to :boat
  belongs_to :user

#   validates :reservation_date_begin, presence:  true, availability: true
#   validates :reservation_date_end, presence: true, availability: true
#   validates :reservation_date_end_after_reservation_date_begin
# private
# def reservation_date_end_after_reservation_date_begin
#   return if reservation_date_end.blank? || reservation_date_begin.blank?
#   if reservation_date_end < reservation_date_begin
#     errors.add(:reservation_date_end,"must be after start date")
# end
# end
end
