class Profile < ApplicationRecord
  belongs_to :user

  validates :phone_number, numericality: true, allow_blank: true,
                           length: { maximum: 9 }
  validates :first_name, :last_name, length: { maximum: 50 }, allow_blank: true
end
