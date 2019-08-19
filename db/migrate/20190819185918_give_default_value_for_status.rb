class GiveDefaultValueForStatus < ActiveRecord::Migration[5.2]
  def change
    change_column :lists, :status, :boolean, default: false
    change_column :tasks, :status, :boolean, default: false
  end
end
