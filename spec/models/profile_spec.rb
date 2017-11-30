require 'rails_helper'

RSpec.describe Profile, type: :model do
  it { is_expected.to validate_length_of(:first_name).is_at_most(50) }
  it { is_expected.to validate_length_of(:last_name).is_at_most(50) }
  it { is_expected.to validate_numericality_of(:phone_number) }
  it { is_expected.to allow_value('').for(:first_name) }
  it { is_expected.to allow_value('').for(:last_name) }
  it { is_expected.to allow_value('').for(:phone_number) }
  it { is_expected.to belong_to(:user) }
end
