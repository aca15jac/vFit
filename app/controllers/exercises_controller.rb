class ExercisesController < ApplicationController

  def index
    @title = "Exercises"
    @exercises = Exercise.all
    @muscles = Muscle.all
  end

  def show
    @title = "Exercises"
    @exercise = Exercise.find(params[:id])
    if params[:muscle_id].present?
      @muscle_id_present = true
      @muscle = Muscle.find(params[:muscle_id])
    end
    if !params[:muscle_id].present?
      @muscle_id_present = false
    end

    #finding the image names
    @exercise_image_name = @exercise.exercise_name.downcase.tr(" ", "_")

    render "show"
  end

end
