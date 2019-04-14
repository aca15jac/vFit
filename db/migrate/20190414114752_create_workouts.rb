class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.integer :log_id
      t.integer :user_id
      t.integer :workout_number


      t.timestamps
    end
  end
end
