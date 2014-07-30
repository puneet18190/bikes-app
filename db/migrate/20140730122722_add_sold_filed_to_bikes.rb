class AddSoldFiledToBikes < ActiveRecord::Migration
  def self.up
    add_column :bikes, :sold, :boolean, :default => false
  end

def self.down
    remove_column :bikes, :sold
  end

end
