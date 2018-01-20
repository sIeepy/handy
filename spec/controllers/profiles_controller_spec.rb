require 'rails_helper'

RSpec.describe ProfilesController, type: :controller do
  let(:user) { create(:user) }
  before :each do
    sign_in user
    @profile = create(:profile)
  end

  describe 'PUT#update' do
    context 'valid attributes' do
      it 'changes profile attributes' do
        put :update, params: { id: @profile,
                              profile: attributes_for(:profile, first_name: 'lol') }
        @profile.reload
        expect(@profile.first_name).to eq('lol')
      end

      it "redirects to the updated contact" do
        put :update, params: { id: @profile, profile: attributes_for(:profile) }
        expect(response).to redirect_to user_path
      end

      it 'flashes info' do
        put :update, params: { id: @profile, profile: attributes_for(:profile) }
        expect(flash[:notice]).to eq 'Profile succesfully updated'
      end
    end
    context "invalid attributes" do
      it "does not change @contact's attributes" do
        put :update, params: { id: @profile,
                               profile: attributes_for(:profile, phone_number: 'Larry') }
        @profile.reload
        expect(@profile.phone_number).to_not eq('Larry')
      end

      it "re-renders the edit method" do
        put :update, params: { id: @profile,
                               profile: attributes_for(:profile_invalid) }
        expect(response).to redirect_to user_path
      end

      # it 'flashes info' do
      #   put :update, params: { id: @profile,
      #                           profile: attributes_for(:profile_invalid) }
      #   expect(flash[:error]).to eq 'Profile not updated'
      # end
    end
  end
end
