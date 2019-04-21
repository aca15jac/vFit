class CreateRoutines < ActiveRecord::Migration[5.2]
  def change
    create_table :routines do |t|
      t.string :name
      t.string :muscle_1
      t.string :muscle_2
      t.string :muscle_3
      t.string :muscle_4
      t.string :muscle_5
      t.string :muscle_6
      t.string :muscle_7
      t.string :muscle_8
      t.string :muscle_9
      t.timestamps
    end
  end
end
