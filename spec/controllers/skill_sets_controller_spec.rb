require 'rails_helper'

RSpec.describe SkillSetsController, type: :controller do
  let(:user) { create(:user) }
  let(:skill) { create(:skill) }

  before do
    sign_in user
    @attr = FactoryBot.attributes_for(:skill_set, user_id: :user,
                                                  skill_id: :skill)
                                                  binding.pry
  end

  describe 'POST#create' do
    context 'with valid attributes' do
      it 'creates new skill_set' do
        expect {
          post :create, params: { skill_set: @attr }
        }.to change(SkillSet, :count).by(1)
      end
      #
      # it 'flashes info' do
      #   post :create, params: { micropost: FactoryGirl.attributes_for(:micropost) }
      #   expect(flash[:notice]).to eq I18n.t('shared.created', resource: 'Micropost')
      # end
      #
      # it 'redirects to the new contact' do
      #   post :create, params: { micropost: FactoryGirl.attributes_for(:micropost) }
      #   expect(response).to redirect_to microposts_path
      # end
    end

    # context 'with invalid attributes' do
    #   it 'does not create new micropost' do
    #     expect{
    #       post :create, params: { micropost: FactoryGirl.attributes_for(:micropost_invalid) }
    #     }.to_not change(Micropost, :count)
    #   end
    #
    #   it 'rerenders new method' do
    #     post :create, params: { micropost: FactoryGirl.attributes_for(:micropost_invalid) }
    #     get :new
    #     expect(response).to render_template(:new)
    #   end
    # end
  end
end
