class WelcomeController < ApplicationController
  #before_filter :authenticate_user!

  # main screen with random cyte
  def index
    @user = User.new
  end

  def info

  end
end
