class Service < ApplicationRecord
  belongs_to :trainer
  has_many :bookings
  has_one_attached :photo
end
