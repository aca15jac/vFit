class ExercisesController < ApplicationController
  before_action :authenticate_user!
  def index
    @title = "Excercises"
    @exercises = Exercise.all
    @muscles = Muscle.all
  end

  def show
    @exercise = Exercise.find(params[:id])
    render "show"
  end

end
