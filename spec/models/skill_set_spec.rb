require 'rails_helper'

RSpec.describe SkillSet, type: :model do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:skill) }
  it { is_expected.to validate_numericality_of(:level) }
  it { is_expected.to validate_inclusion_of(:level).in_range(1..5) }
  it { is_expected.to validate_uniqueness_of(:user_id).scoped_to(:skill_id) }
end
