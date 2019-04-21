class MusclesController < ApplicationController

  def index
    @title = "Muscles"
    @muscles = Muscle.all

    render "index"
  end

  def show
    @title = "Muscles"
    @muscle = Muscle.find(params[:id])

    if !params[:progress_ID].nil?
      @progress_ID = params[:progress_ID]
    else
      @progress_ID = 0
    end
    if !params[:routine_ID].nil?
      @routine_ID = params[:routine_ID]
    else
      @routine_ID = 0
    end
    render "show"
  end
end
