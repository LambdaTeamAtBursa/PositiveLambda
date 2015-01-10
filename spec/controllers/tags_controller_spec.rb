require 'rails_helper'

RSpec.describe TagsController, :type => :controller do

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
    subject { FactoryGirl.create(:tag) }

    before do
      sign_in user
    end

    describe "GET #index" do
      it "render :index view" do
        get :index
        expect(response).to render_template :index
      end

      it "assigns the requested tags to subject" do
        get :index
        expect(assigns(:tags)).to eq([subject])
      end
    end

    describe "GET #show" do
      it "assigns the requested tag to subject" do
        get :show, id: subject
        expect(assigns(:tag)).to eq(subject)
      end

      it "renders the :show view" do
        get :show, id: subject
        expect(response).to render_template :show
      end
    end

    describe "GET #new" do
      it "assigns the requested tag to new tag" do
        get :new
        expect(assigns(:tag)).to be_new_record
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
            post :create, tag: FactoryGirl.attributes_for(:tag)
          }.to change(Tag, :count).by(1)
        end

        it "redirects to index path" do
          post :create, tag: FactoryGirl.attributes_for(:tag)
          expect(response).to redirect_to tags_path
        end
      end
    end

    describe "GET #edit" do
      it "assigns the requested tag to subject" do
        get :edit, id: subject
        expect(assigns(:tag)).to eq(subject)
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
            post :update, id: subject, tag: { name: 'new_tag' }
          }.to change{ subject.reload.name }.to('new_tag')
        end

        it "redirects to index path" do
          post :update, id: subject, tag: { name: 'new_tag' }
          expect(response).to redirect_to tags_path
        end
      end
    end

    describe 'DELETE #destroy' do
      before(:each) { @tag = FactoryGirl.create :tag}

      it "deletes the tag" do
        expect {
          delete :destroy, id: @tag
        }.to change(Tag, :count).by(-1)
      end

      it "redirects to tags#index" do
        delete :destroy, id: @tag
        expect(response).to redirect_to tags_path
      end
    end

  end

end
