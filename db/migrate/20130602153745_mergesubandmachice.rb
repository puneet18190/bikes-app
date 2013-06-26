class Mergesubandmachice < ActiveRecord::Migration
  def up
    drop_table :submissions
    drop_table :transactions
    drop_table :machines

    create_table :submissions do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone

      t.string :make
      t.string :model
      t.string :registration
      t.string :mileage
      t.string :postcode
      t.text :other
      t.string :value_wanted


      t.timestamps
    end
  end

  def down
  end
end
