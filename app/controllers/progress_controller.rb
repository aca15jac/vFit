class ProgressController < ApplicationController
  before_action :authenticate_user!
  def index
    @title = "Progress"
  end
end
