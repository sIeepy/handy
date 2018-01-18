require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to have_one(:profile).dependent(:destroy) }
  it { is_expected.to have_one(:address).dependent(:destroy) }
  it { is_expected.to have_many(:announcements).dependent(:destroy) }
  it { is_expected.to have_many(:skill_sets) }
  it { is_expected.to have_many(:skills).through(:skill_sets) }
end
