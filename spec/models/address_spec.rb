require 'rails_helper'

RSpec.describe Address, type: :model do
  it { is_expected.to validate_length_of(:city).is_at_most(50) }
  it { is_expected.to validate_length_of(:street_name).is_at_most(50) }
  it { is_expected.to validate_length_of(:voivodeship).is_at_most(50) }
  it { is_expected.to validate_numericality_of(:building_number) }
  it { is_expected.to validate_numericality_of(:appartment_number) }
  it { is_expected.to allow_value('').for(:city) }
  it { is_expected.to allow_value('').for(:street_name) }
  it { is_expected.to allow_value('').for(:voivodeship) }
  it { is_expected.to allow_value('').for(:appartment_number) }
  it { is_expected.to allow_value('').for(:building_number) }
  it { is_expected.to belong_to(:user) } 
end
