require 'rails_helper'

RSpec.describe HomeController, :type => :controller do

  describe "GET index" do

    let(:user) { FactoryGirl.create(:user) }

    before do
      FactoryGirl.create(:cyte) 
      sign_in user
    end
    
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
