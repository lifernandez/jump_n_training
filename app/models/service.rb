class Service < ApplicationRecord
  belongs_to :trainer
  has_many :bookings
  has_many :reviews, through: :bookings
  has_one_attached :photo
  after_create :generate_sku

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  monetize :price_cents

  def generate_sku
    self.update(sku: "product_#{id}")
  end
end
