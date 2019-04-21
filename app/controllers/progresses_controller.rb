class ProgressesController < ApplicationController
  before_action :authenticate_user!
  def index
    @title = "Tools"
    @user = current_user
    @logs = Log.where(user_id: current_user.id)
    @exercises = Exercise.all
    @muscles = Muscle.all
    render 'index'
  end

  def show
    @title = "Tools"
    @muscles = Muscle.all
    @user = current_user
    @logs = Log.where(user_id: current_user.id)
    @exercises = Exercise.all
    @progress = Progress.find(params[:id])
    @routines = Routine.all
  end


end
