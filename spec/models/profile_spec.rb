require 'rails_helper'

RSpec.describe Profile, type: :model do
  it { should validate_length_of(:first_name).is_at_most(50) }
  it { should validate_length_of(:last_name).is_at_most(50) }
  it { should validate_numericality_of(:phone_number) }
  it { should allow_value('').for(:first_name) }
  it { should allow_value('').for(:last_name) }
  it { should allow_value('').for(:phone_number) }
  it { should belong_to(:user) }
end
