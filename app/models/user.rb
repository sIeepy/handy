class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :build_profile, :build_address

  has_one :profile, dependent: :destroy
  has_one :address, dependent: :destroy
  has_many :announcements, dependent: :destroy
  has_many :skill_sets
  has_many :skills, through: :skill_sets

  has_attached_file :avatar, styles: { medium: '50x300>', thumb: '100x100>' }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
