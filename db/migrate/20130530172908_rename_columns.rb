class RenameColumns < ActiveRecord::Migration
  def up
    rename_column :transactions, :sub_customer_id, :submissions_id
    rename_column :transactions, :bike_id, :machine_id
  end

  def down
  end
end
