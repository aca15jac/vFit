class ExercisesController < ApplicationController
  before_action :authenticate_user!
  def index
    @title = "Excercises"

  end

end
