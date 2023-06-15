class Trainer < ApplicationRecord
  belongs_to :user
  has_many :services

    include PgSearch::Model
    pg_search_scope :search_by_sports_and_address_and_description,
    against: [ :sports, :description ],
    associated_against: {
      services: [ :description, :address]
    },
    using: {
    tsearch: { prefix: true }
    }
end
