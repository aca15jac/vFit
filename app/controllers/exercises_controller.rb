class ExercisesController < ApplicationController

  def index
    @title = "Exercises"
    @exercises = Exercise.all
    @muscles = Muscle.all
  end

  def show

    @title = "Exercises"
    @exercise = Exercise.find(params[:id])
    @user = current_user
    @logs = Log.all
    @exercise_image_name = @exercise.exercise_name.downcase.tr(" ", "_")
    if params[:muscle_id].present?
      @muscle_id_present = true
      @muscle = Muscle.find(params[:muscle_id])
    end
    if !params[:muscle_id].present?
      @muscle_id_present = false
    end
    if params[:progress_id].present?
      @progress_id_present = true
      @progress = Progress.find(params[:progress_id])
      render 'show2'
    end
    if !params[:progress_id].present?
      render 'show'
    end
  end

end
