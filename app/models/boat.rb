class Boat < ApplicationRecord
  belongs_to :user
  has_many :rents

  validates :description, presence:  true
  validates :boat_model, presence:  true
  validates :licence, presence: true
  validates :person_number, presence:  true
  validates :price, presence: true
  validates :localisation, presence:  true

end
