class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :exercise_name
      t.string :muscle_type_1
      t.string :muscle_type_2
      t.string :muscle_type_3
      t.string :description

      t.timestamps
    end
  end
end
