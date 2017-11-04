require 'rails_helper'

RSpec.describe Address, type: :model do
  it { should validate_length_of(:city).is_at_most(50) }
  it { should validate_length_of(:street_name).is_at_most(50) }
  it { should validate_length_of(:voivodeship).is_at_most(50) }
  it { should validate_numericality_of(:building_number) }
  it { should validate_numericality_of(:appartment_number) }
  it { should allow_value('').for(:city) }
  it { should allow_value('').for(:street_name) }
  it { should allow_value('').for(:voivodeship) }
  it { should allow_value('').for(:appartment_number) }
  it { should allow_value('').for(:building_number) }
  it { should belong_to(:user) } 
end
