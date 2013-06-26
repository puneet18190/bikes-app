class Renamefield < ActiveRecord::Migration
  def up
    rename_column :transactions, :machine_id, :machines_id
  end

  def down
  end
end
