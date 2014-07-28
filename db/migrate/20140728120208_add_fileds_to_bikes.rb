class AddFiledsToBikes < ActiveRecord::Migration
  def change
    add_column :bikes, :stock, :boolean
    add_column :bikes, :actual_purchase_price, :decimal
    add_column :bikes, :amend_description, :text
    add_column :bikes, :selling_price, :decimal
  end
end
