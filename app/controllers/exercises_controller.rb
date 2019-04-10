class ExercisesController < ApplicationController
  before_action :authenticate_user!
  def index
    @title = "Excercises"
    @exercises = Exercise.all
    @muscles = Muscle.all
  end

  def show
    @exercise = Exercise.find(params[:id])
    #finding the image names
    @exercise_image_name = @exercise.exercise_name.downcase.tr(" ", "_")

    render "show"
  end

end
