class CreateMuscles < ActiveRecord::Migration[5.2]
  def change
    create_table :muscles do |t|
      t.string :muscle_name
      t.string :muscle_group

      t.timestamps
    end
  end
end
