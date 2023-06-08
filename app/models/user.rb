class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :services
  has_many :categories, through: :services
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many :subscriptions
  has_many :club_reviews, through: :subscriptions
  has_many :clubs
  has_one :trainer
  has_many :user_activities
  has_many :activities, through: :user_activities
end
