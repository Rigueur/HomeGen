class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_many :flats, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :favorites

  validates :first_name, :last_name, :age, presence: true
  after_validation :old?
  after_validation :avatar

  def old?
    if age > 40
      self.old = true
    else
      self.old = false
    end
  end

  def avatar
    if avatar_url.present?
      self.avatar_url = avatar_url
    else
      self.avatar_url = "https://i.imgur.com/lID0B5t.png"
    end
  end

end
