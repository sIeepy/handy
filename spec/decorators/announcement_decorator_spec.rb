require 'rails_helper'

RSpec.describe AnnouncementDecorator do
  let(:user) { create(:user) }
  let(:announcement) { create(:announcement)}
  before { sign_in user }

  describe '#selection' do
    subject { announcement.decorate.selection }
    it { is_expected.to eq %w[Electric Mechanic Transport Garden Painting Renovate Other] }
  end

  describe '#creation' do
    subject { announcement.decorate.creation }
    context '#creation returns minutes' do
      let(:announcement) do
        create :announcement,
               created_at: 40.minutes.ago
      end
      it { is_expected.to eq '40 minutes' }
    end

    context '#creation returns hours' do
      let(:announcement) do
        create :announcement,
               created_at: 150.minutes.ago
      end
      it { is_expected.to eq '2 hours' }
    end
  end
end
