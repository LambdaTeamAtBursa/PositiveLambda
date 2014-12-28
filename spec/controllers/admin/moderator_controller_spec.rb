require 'rails_helper'

RSpec.describe Admin::ModeratorController, :type => :controller do

  xdescribe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end