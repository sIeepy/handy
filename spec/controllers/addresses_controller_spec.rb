require 'rails_helper'

RSpec.describe AddressesController, type: :controller do
  let(:user) { create(:user) }
  before :each do
    sign_in user
    @address = create(:address)
  end

  describe 'PUT#update' do
    context 'valid attributes' do
      it "changes address's attributes" do
        put :update, params: { id: @address,
                               address: attributes_for(:address, city: 'Larry') }
        @address.reload
        expect(@address.city).to eq('Larry')
      end

      it "redirects to the updated contact" do
        put :update, params: { id: @address, address: attributes_for(:address) }
        expect(response).to redirect_to user_path
      end

      it 'flashes info' do
        put :update, params: { id: @address, address: attributes_for(:address) }
        expect(flash[:notice]).to eq 'Profile succesfully updated'
      end
    end
    context "invalid attributes" do
      it "does not change @contact's attributes" do
        put :update, params: { id: @address,
                               address: attributes_for(:address, building_number: 'Larry') }
        @address.reload
        @address.building_number.should_not eq('Larry')
      end

      it "re-renders the edit method" do
        put :update, params: { id: @address,
                               address: attributes_for(:address_invalid) }
        expect(response).to redirect_to user_path
      end

      # it 'flashes info' do
      #   put :update, params: { id: @address,
      #                           address: attributes_for(:address_invalid) }
      #   expect(flash[:error]).to eq 'Profile not updated'
      # end
    end
  end
end
