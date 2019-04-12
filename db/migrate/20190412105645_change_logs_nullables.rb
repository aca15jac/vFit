class ChangeLogsNullables < ActiveRecord::Migration[5.2]
  def change
    change_column :logs, :weighted, :boolean, :null => false
    change_column :logs, :exercise_id, :integer, :null => false
    change_column :logs, :user_id, :integer, :null => false
    change_column :logs, :weight, :decimal, :null => false
    change_column :logs, :reps, :integer, :null => false
  end
end
