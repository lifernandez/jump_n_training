class Subscription < ApplicationRecord
  belongs_to :club
  belongs_to :user
  has_many :club_reviews
end
