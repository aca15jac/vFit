class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.integer :exercise_id
      t.integer :user_id
      t.boolean :weighted
      t.decimal :weight
      t.integer :reps

      t.timestamps

    end
  end
end
