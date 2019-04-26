class RoutinesController < ApplicationController
  before_action :authenticate_user!
  def index
    @title = "Routines"

    render 'index'
  end

  def show
    @title = "Routines"
    @routine = Routine.find(params[:id])
    @current_user_logs = Log.where(user_id: current_user.id, active: true)
    @exercises = Exercise.all
    @muscles = Muscle.all
    if !params[:progress_ID].nil?
      @progress_ID = params[:progress_ID]
    else
      @progress_ID = 0
    end

    render 'show'


  end




end
