class WorkoutsController < ApplicationController
  before_action :authenticate_user!
  def index
    @title = "Workouts"
  end
end
