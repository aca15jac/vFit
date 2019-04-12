class CreateProgress < ActiveRecord::Migration[5.2]
  def change
    create_table :progresses do |t|
      t.string :type
      t.string :description

      t.timestamps
    end
  end
end
