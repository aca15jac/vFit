class AddActiveToLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :logs, :active, :boolean, :default => 0
  end
end
