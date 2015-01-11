require 'rails_helper'

RSpec.describe HomeController, :type => :controller do

  describe "GET index" do

    let(:user) { FactoryGirl.create(:user) }
    subject { FactoryGirl.create(:cyte) }

    before do
      sign_in user
    end
    
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
