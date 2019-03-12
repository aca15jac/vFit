class HomepageController < ApplicationController
  before_action :authenticate_user!
  def home
    @title = "vFit"
  end
end
