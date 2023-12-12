class PubOwner < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :pub_profiles
  accepts_nested_attributes_for :pub_profiles, allow_destroy: true
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "encrypted_password", "gender", "id", "name", "remember_created_at", "reset_password_sent_at", "reset_password_token", "updated_at"]
  end
end
