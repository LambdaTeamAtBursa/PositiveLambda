class HomeController < ApplicationController
  #before_filter :authenticate_user!

  # main screen with random cyte
  def index
    @user = User.new
    @cyte = Cyte.find(1 + (rand Cyte.count))
  end

  def info

  end
end
