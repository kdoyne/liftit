class CreateWorkout < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.datetime :date_time
      t.references :user
      t.timestamps
    end
  end
end
