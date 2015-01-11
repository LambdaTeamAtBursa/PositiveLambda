require 'rails_helper'

RSpec.describe CytesController, :type => :controller do

  context "when user not logged in" do
    describe "GET #index" do
      it "redirects to login page" do
        get :index
        expect(response).to redirect_to new_user_session_path
      end
    end
  end


  context "when user logged in" do
    let(:user) { FactoryGirl.create(:user) }
    subject { FactoryGirl.create(:cyte) }

    before do
      sign_in user
    end

    describe "GET #index" do
      it "render :index view" do
        get :index
        expect(response).to render_template :index
      end

      it "assigns the requested cyte to subject" do
        get :index
        expect(assigns(:cytes)).to eq([subject])
      end
    end

    describe "GET #show" do
      it "assigns the requested cyte to subject" do
        get :show, id: subject
        expect(assigns(:cyte)).to eq(subject)
      end

      it "renders the :show view" do
        get :show, id: subject
        expect(response).to render_template :show
      end
    end

    describe "GET #new" do
      it "assigns the requested cyte to new cyte" do
        get :new
        expect(assigns(:cyte)).to be_new_record
      end

      it "renders the :new view" do
        get :new
        expect(response).to render_template :new
      end
    end

    describe "POST #create" do
      context "with valid attributes" do
        it "creates new object" do
          expect{
            post :create, cyte: FactoryGirl.attributes_for(:cyte)
          }.to change(Cyte, :count).by(1)
        end

        it "redirects to index path" do
          post :create, cyte: FactoryGirl.attributes_for(:cyte)
          expect(response).to redirect_to cytes_path
        end
      end
    end

    describe "GET #edit" do
      it "assigns the requested cyte to subject" do
        get :edit, id: subject
        expect(assigns(:cyte)).to eq(subject)
      end

      it "renders the :edit view" do
        get :edit, id: subject
        expect(response).to render_template :edit
      end
    end

    describe "PATCH #update" do
      context "with valid attributes" do
        it "updates object" do
          expect{
            post :update, id: subject, cyte: { text: 'new' }
          }.to change{ subject.reload.text }.to('new')
        end

        it "redirects to index path" do
          post :update, id: subject, cyte: { text: 'new' }
          expect(response).to redirect_to cytes_path
        end
      end
    end

    describe 'DELETE #destroy' do
      before(:each) { @cyte = FactoryGirl.create :cyte}

      it "deletes the cyte" do
        expect {
          delete :destroy, id: @cyte
        }.to change(Cyte, :count).by(-1)
      end

      it "redirects to cytes#index" do
        delete :destroy, id: @cyte
        expect(response).to redirect_to cytes_path
      end
    end


  end




end
