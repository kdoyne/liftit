class WorkoutsController < ApplicationController

  def new
    @workout = Workout.new
    @user = current_user
  end

  def create
    @workout = Workout.new(workout_params)
    @workout.user_id = current_user.id
    @workout.save
    @user = current_user
    redirect_to user_workout_path(@user, @workout)
  end

  def show
    @workout = Workout.find(params[:id])
    @user = current_user
    render(:show)
  end

  private 

  def workout_params
    params.require(:workout).permit(:date_time)
  end

end