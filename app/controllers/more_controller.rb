class MoreController < ApplicationController
  def index
    @title = "More"
    @user = current_user
  end
end
