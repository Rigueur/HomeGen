class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :favorites, dependent: :destroy
  validates :name, :location, :description, :price_per_month, :autonomy_level, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
