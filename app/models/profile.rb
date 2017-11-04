class Profile < ApplicationRecord
  belongs_to :user

  validates :phone_number, numericality: true, allow_blank: true
  validates :first_name, length: { maximum: 50 }, allow_blank: true
  validates :last_name, length: { maximum: 50 }, allow_blank: true
end
