class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user, only: [:show, :edit,:update]

  def show
    @cytes = Cyte.where(creator_id: @user.id).paginate(:page => params[:page], :per_page => 10)
  end

  def edit
  end

  def update
    if @user.update(params.require(:user).permit(:name))
      redirect_to user_path(@user)
    else
      render :edit
    end
  end
        

  private

  def find_user
    @user = User.find(params[:id])
  end


end
