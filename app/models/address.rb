class Address < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :city_changed? or :street_name_changed? or
                                 :voivodeship_changed? or
                                 :building_number_changed?

  validates :city, :street_name, :voivodeship, length: { maximum: 50 }, allow_blank: true
  validates :appartment_number, :building_number, numericality: true, allow_blank: true

  def address
    street = [street_name, building_number].compact.join(' ')
    [street, city, voivodeship].compact.join(', ')
  end
end
