class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :create_profile, :create_address
  has_one :profile, dependent: :destroy
  has_one :address, dependent: :destroy

end
