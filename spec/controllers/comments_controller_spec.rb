require 'rails_helper'

RSpec.describe CommentsController, :type => :controller do

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
    subject { FactoryGirl.create(:comment) }

    before do
      sign_in user
    end

    describe "GET #index" do
      it "render :index view" do
        get :index
        expect(response).to render_template :index
      end

      it "assigns the requested comment to subject" do
        get :index
        expect(assigns(:comments)).to eq([subject])
      end
    end

    describe "GET #show" do
      it "assigns the requested comment to subject" do
        get :show, id: subject
        expect(assigns(:comment)).to eq(subject)
      end

      it "renders the :show view" do
        get :show, id: subject
        expect(response).to render_template :show
      end
    end

    describe "GET #new" do
      it "assigns the requested comment to new comment" do
        get :new
        expect(assigns(:comment)).to be_new_record
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
            post :create, comment: FactoryGirl.attributes_for(:comment)
          }.to change(Comment, :count).by(1)
        end

        it "redirects to index path" do
          post :create, comment: FactoryGirl.attributes_for(:comment)
          expect(response).to redirect_to comments_path
        end
      end
    end

    describe "GET #edit" do
      it "assigns the requested comment to subject" do
        get :edit, id: subject
        expect(assigns(:comment)).to eq(subject)
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
            post :update, id: subject, comment: { text: 'new' }
          }.to change{ subject.reload.text }.to('new')
        end

        it "redirects to index path" do
          post :update, id: subject, comment: { text: 'new' }
          expect(response).to redirect_to comments_path
        end
      end
    end

    describe 'DELETE #destroy' do
      before(:each) { @comment = FactoryGirl.create :comment}

      it "deletes the comment" do
        expect {
          delete :destroy, id: @comment
        }.to change(Comment, :count).by(-1)
      end

      it "redirects to comments#index" do
        delete :destroy, id: @comment
        expect(response).to redirect_to comments_path
      end
    end

  end


end
