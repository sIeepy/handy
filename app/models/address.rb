class Address < ApplicationRecord
  belongs_to :user

  validates :city, :street_name, :voivodeship, length: { maximum: 50 },  allow_blank: true
  validates :appartment_number, :building_number, numericality: true, allow_blank: true
end
