class ExercisesController < ApplicationController

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    @exercise.workout_id = current_workout.id
    @exercise.save
    redirect_to exercise_path(@exercise)
  end

  def show
    if current_user.exercise.id != params[:id].to_i
      render nothing: true, status: 401
    else
      @exercise = Exercise.find(params[:id])
      render(:show)
    end
  end

  private 

  def exercise_params
    params.require(:exercise).permit(:name, :sets, :reps, :weight)
  end

end