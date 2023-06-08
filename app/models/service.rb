class Service < ApplicationRecord
  belongs_to :trainer
  has_many :bookings
end
