class WorkoutsController < ApplicationController
  before_action :authenticate_user!
  def index
    @title = "Workouts"
    @workouts = Workout.where(user_id: current_user.id)

  end


  def new
    @title = "Workouts"
    @user = current_user
    @current_user_logs = Log.where('(user_id = ? AND active = ?)', current_user.id, true)
    @log_types = Array.new
    @current_user_logs.each do |z|
      if !@log_types.include?(z.exercise_id)
        @log_types.append(z.exercise_id)
      end
    end
    render 'new'

  end

  def create
    @title = "created"
    @user = current_user
    @current_user_logs = Log.where('(user_id = ? AND active = ?)', current_user.id, true)
    @log_types = Array.new
    @current_user_logs.each do |z|
      if !@log_types.include?(z.exercise_id)
        @log_types.append(z.exercise_id)
      end
    end
    # log.exercise_id = params[:exercise_id]
    #highest_weight = useable_logs.order(:weight).last
    all_workouts = Workout.where(user_id: current_user.id)
    puts all_workouts.length
    workout_last_number = 1
    if !all_workouts.order(:workout_number).last.nil?
      workout_last_number = all_workouts.order(:workout_number).last.workout_number + 1
    end


    @current_user_logs.each do |t|
      Workout.create(:log_id => t.id, :user_id => current_user.id, :workout_number => workout_last_number)
      Log.update(t.id, :active => false)

    end
    render 'create'
  end

  def show
    @user = current_user
    @current_user_logs = Log.where('(user_id = ?)', current_user.id)
    @log_types = Array.new
    @workouts = Workout.where(workout_number: params[:id])


    render 'show'
  end

  def destroy
    @workouts = Workout.where(workout_number: params[:id])
    @workouts.each do |h|
      Log.find(h.log_id).destroy
      h.destroy
    end
    redirect_to '/workouts'

  end

end
