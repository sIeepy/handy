require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  let(:user) { create(:user) }

  before { sign_in user }
  describe 'GET#index' do
    it 'template rendering action' do
      get :index
      expect(response).to render_template :index
    end
  end
end
