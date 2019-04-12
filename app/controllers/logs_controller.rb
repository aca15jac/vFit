class LogsController < ApplicationController
  before_action :authenticate_user!
  def index
    @title = "Logs"
    @user = current_user
    @current_user_logs = Log.where('(user_id = ? AND active = ?)', current_user.id, true)
    @log_types = Array.new
    @current_user_logs.each do |z|
      if !@log_types.include?(z.exercise_id)
        @log_types.append(z.exercise_id)
        puts z.exercise_id
      end
    end
  end

  def show
    @title = "Logs"
    render 'show'
  end

  def new
    @title = "Logs"
    @log = Log.new
    @exercise = Exercise.find(params[:exercise_id])
    @user = current_user
    @current_user_logs = Log.where('(user_id = ? AND active = ? AND exercise_id =?)', current_user.id, true, @exercise.id)
    render 'new'
  end

  def create
    @title = "Logs"
    @exercise = Exercise.find(params[:exercise_id])
    @user = current_user

    if params[:log][:weight].present? && params[:log][:reps].present?
      log = Log.new
      log.exercise_id = params[:exercise_id]
      log.user_id = params[:log][:user_id]
      log.weighted = params[:log][:weighted]
      log.weight = params[:log][:weight]
      log.reps = params[:log][:reps]
      log.active = params[:log][:active]
      if log.save
        render 'create'
      end
    end
    if !params[:log][:weight].present? || !params[:log][:reps].present?
      redirect_to new_exercise_log_path(@exercise)
    end


  end

  def update
    @title = "Logs"
    @exercise = Exercise.find(params[:exercise_id])
    @user = current_user
    @log = Log.find(params[:id])
    @log.exercise_id = params[:log][:exercise_id]
    @log.user_id = params[:log][:user_id]
    @log.weighted = params[:log][:weighted]
    @log.weight = params[:log][:weight]
    @log.reps = params[:log][:reps]
    @log.active = params[:log][:active]
    if @log.save
      render 'update'
    end
  end

  def edit
    @title = "Logs"
    @exercise = Exercise.find(params[:exercise_id])
    @log = Log.find(params[:id])
    @user = current_user
    render 'edit'
  end

  def destroy
    @title = "Logs"
    @log = Log.find(params[:id])
    @exercise = Exercise.find(params[:exercise_id])
    @user = current_user
    @log.destroy
    redirect_to new_exercise_log_path(@exercise)
  end

end
