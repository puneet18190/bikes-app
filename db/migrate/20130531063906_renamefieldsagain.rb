class Renamefieldsagain < ActiveRecord::Migration
  def up
    rename_column :transactions, :machines_id, :machine_id
    rename_column :transactions, :submissions_id, :submission_id
  end

  def down
  end
end
