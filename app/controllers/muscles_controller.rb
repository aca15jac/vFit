class MusclesController < ApplicationController

  def index
    @title = "Muscles"
    @muscles = Muscle.all

    render "index"
  end

  def show
    @title = "Muscles"
    @muscle = Muscle.find(params[:id])
    render "show"
  end
end
