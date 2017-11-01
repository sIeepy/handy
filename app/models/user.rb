class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :user_profile, dependent: :destroy
  has_one :user_address, dependent: :destroy
end
