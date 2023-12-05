class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, :location, :description, :price_per_month, :autonomy_level, presence: true
end
