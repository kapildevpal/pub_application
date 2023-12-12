class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # validates :gender, optional: true
  enum gender: { male: 0, female: 1, other: 2 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :bookings
         has_many :pub_profiles, through: :bookings
end
