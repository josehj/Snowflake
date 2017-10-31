class WelcomeController < ApplicationController
  def index
    @user = user_signed_in?
  end
end
