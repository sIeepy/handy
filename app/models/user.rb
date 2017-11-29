class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :create_profile, :create_address
  has_one :profile, dependent: :destroy
  has_one :address, dependent: :destroy
  has_many :announcements, dependent: :destroy
  has_attached_file :avatar, styles: { medium: '50x300>', thumb: '100x100>' }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
