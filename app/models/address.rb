class Address < ApplicationRecord
  belongs_to :user
  validates :city, length: { maximum: 50 },  allow_blank: true
  validates :street_name, length: { maximum: 50 },  allow_blank: true
  validates :voivodeship, length: { maximum: 50 },  allow_blank: true
  validates :appartment_number, numericality: true, allow_blank: true
  validates :building_number, numericality: true, allow_blank: true
end
