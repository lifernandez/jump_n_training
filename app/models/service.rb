class Service < ApplicationRecord
  belongs_to :trainer
  has_many :bookings
  has_many :reviews, through: :bookings
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
