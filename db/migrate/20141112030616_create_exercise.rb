class CreateExercise < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :reps
      t.integer :sets
      t.integer :weight
      t.timestamps
    end
  end
end
