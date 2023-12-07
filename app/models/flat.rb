class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :favorites
  validates :name, :location, :description, :price_per_month, :autonomy_level, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  reverse_geocoded_by :latitude, :longitude do |obj,results|
    if geo = results.first
      obj.city    = geo.city
    end
  end
  after_validation :reverse_geocode, if: :will_save_change_to_location?
end
