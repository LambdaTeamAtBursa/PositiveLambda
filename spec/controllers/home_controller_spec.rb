require 'rails_helper'

RSpec.describe HomeController, :type => :controller do

  describe "GET index" do

    let(:user) { FactoryGirl.create(:user) }

    before do
      sign_in user
      # load Rails.root.join('db','seeds.db')
      #  cannot load such file -- /srv/bursa/ror/PositiveLambda/db/seeds.db (LoadError)
      #  неясная ошибка
      FactoryGirl.create(:cyte)
    end
    
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
