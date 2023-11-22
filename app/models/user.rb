class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # validates :gender, optional: true
  enum gender: { male: 0, female: 1, other: 2 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
