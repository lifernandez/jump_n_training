class Club < ApplicationRecord
  belongs_to :user
  has_many :subscriptions
  has_many :club_reviews, through: :subscriptions
end
