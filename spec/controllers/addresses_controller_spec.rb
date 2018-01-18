require 'rails_helper'

RSpec.describe AddressesController, type: :controller do
  let(:user) { create(:user) }
  let(:address) { create(:address) }
  before { sign_in user }

  # describe 'PUT#update' do
  #
  #   it 'valid change' do
  #     addr = { city: 'looool', street_name: 'leeel' }
  #     put :update, params: { id: address }, address: addr
  #     expect(address.city).to eql addr[:city]
  #   end
  # end
end
