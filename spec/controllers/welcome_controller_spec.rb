require 'rails_helper'

RSpec.describe WelcomeController, :type => :controller do

  describe "GET index" do

    let(:user) { FactoryGirl.create(:user) }

    before do
      sign_in user
    end
    
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
