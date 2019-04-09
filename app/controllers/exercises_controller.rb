class ExercisesController < ApplicationController
  before_action :authenticate_user!
  def index
    @title = "Excercises"
    @exercises = Exercise.all
    @muscles = Muscle.all
  end

end
