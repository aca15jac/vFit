class AddWeightedToExercises < ActiveRecord::Migration[5.2]
  def change
    add_column :exercises, :weighted, :boolean
  end
end
