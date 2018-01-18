require 'rails_helper'

RSpec.describe UserDecorator do
  let(:user) { create(:user) }
  before { sign_in user }
  describe '#user_validation' do
    it 'is valid' do
      expect(user.id).to eq h.current_user.id
    end

    it 'is invalid' do
      stranger = FactoryBot.create(:user)
      expect(stranger.id).not_to eq(h.current_user.id)
    end
  end
end
