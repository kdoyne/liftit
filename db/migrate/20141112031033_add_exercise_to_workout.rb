class AddExerciseToWorkout < ActiveRecord::Migration
  def change
    change_table :exercises do |t|
      t.references :workouts
    end
  end
end
