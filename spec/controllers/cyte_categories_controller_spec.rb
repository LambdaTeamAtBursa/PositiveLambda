require 'rails_helper'

RSpec.describe CyteCategoriesController, :type => :controller do

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
    subject { FactoryGirl.create(:cyte_category) }

    before do
      sign_in user
    end

    describe "GET #index" do
      it "render :index view" do
        get :index
        expect(response).to render_template :index
      end

      it "assigns the requested cyte_category to subject" do
        get :index
        expect(assigns(:cyte_categories)).to eq([subject])
      end
    end

    describe "GET #show" do
      it "assigns the requested cyte_category to subject" do
        get :show, id: subject
        expect(assigns(:cyte_category)).to eq(subject)
      end

      it "renders the :show view" do
        get :show, id: subject
        expect(response).to render_template :show
      end
    end

    describe "GET #new" do
      it "assigns the requested cyte_category to new cyte_category" do
        get :new
        expect(assigns(:cyte_category)).to be_new_record
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
            post :create, cyte_category: FactoryGirl.attributes_for(:cyte_category)
          }.to change(CyteCategory, :count).by(1)
        end

        it "redirects to index path" do
          post :create, cyte_category: FactoryGirl.attributes_for(:cyte_category)
          expect(response).to redirect_to cyte_categories_path
        end
      end
    end

    describe "GET #edit" do
      it "assigns the requested cyte_category to subject" do
        get :edit, id: subject
        expect(assigns(:cyte_category)).to eq(subject)
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
            post :update, id: subject, cyte_category: { name: 'new_category' }
          }.to change{ subject.reload.name }.to('new_category')
        end

        it "redirects to index path" do
          post :update, id: subject, cyte_category: { name: 'new_category' }
          expect(response).to redirect_to cyte_categories_path
        end
      end
    end

    describe 'DELETE #destroy' do
      before(:each) { @cyte_category = FactoryGirl.create :cyte_category}

      it "deletes the cyte_category" do
        expect {
          delete :destroy, id: @cyte_category
        }.to change(CyteCategory, :count).by(-1)
      end

      it "redirects to cyte_categories#index" do
        delete :destroy, id: @cyte_category
        expect(response).to redirect_to cyte_categories_path
      end
    end


  end

end
