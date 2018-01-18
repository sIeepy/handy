require 'rails_helper'

RSpec.describe Skill, type: :model do
  it { is_expected.to have_many(:skill_sets) }
  it { is_expected.to have_many(:users).through(:skill_sets) }
  it { is_expected.to validate_uniqueness_of(:name) }
end
