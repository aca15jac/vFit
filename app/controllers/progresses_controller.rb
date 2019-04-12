class ProgressesController < ApplicationController
  before_action :authenticate_user!
  def index
    @title = "Progress"
    @user = current_user
    @logs = Log.all
    @exercises = Exercise.all
    @muscles = Muscle.all
    render 'index'
  end

  def show
    @title = "Progress"
    @muscles = Muscle.all
    @logs = Log.all
    @exercises = Exercise.all
    @progress = Progress.find(1)
  end


end
