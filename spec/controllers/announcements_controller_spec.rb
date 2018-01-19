require 'rails_helper'

RSpec.describe AnnouncementsController, type: :controller do
  let(:user) { create(:user) }
  before do
    sign_in user
    @attrs = FactoryBot.attributes_for(:announcement, user_id: :user)
    @attrs_invalid = FactoryBot.attributes_for(:announ_invalid, user_id: :user)
  end

  describe 'GET#show' do
    let(:announcement) { create(:announcement) }
    it 'template rendering action' do
      get :show, params: { id: announcement.id }
      expect(response).to have_http_status(:success)
      expect(response).to render_template :show
    end
  end

  describe 'POST#create' do
    context 'with valid attributes' do
      it 'creates new announcement' do
        expect {
          post :create, params: { announcement: @attrs }
        }.to change(Announcement, :count).by(1)
      end

      it 'redirects to the new contact' do
        post :create, params: { announcement: @attrs }
        expect(response).to redirect_to announcements_path
      end
    end

    context 'with invalid attributes' do
      it 'does not create new announcement' do
        expect{
          post :create, params: { announcement: @attrs_invalid }
        }.to_not change(Announcement, :count)
      end

      it 'rerenders new method' do
        post :create, params: { announcement: @attrs_invalid }
        expect(response).to redirect_to announcements_path
      end
    end
  end
end
