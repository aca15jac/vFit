class ChangeTypeToNameOnProgresses < ActiveRecord::Migration[5.2]
  def change
    rename_column :progresses, :type, :name
  end
end
