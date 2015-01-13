class HomeController < ApplicationController
  #before_filter :authenticate_user!

  # main screen with random cyte
  def index
    @user = User.new
    offset = rand(Cyte.count)
    @cyte = Cyte.offset(offset).first
  end

  def info

  end
end
