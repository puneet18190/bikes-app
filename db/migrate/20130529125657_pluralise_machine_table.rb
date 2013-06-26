class PluraliseMachineTable < ActiveRecord::Migration
  def up
    drop_table :machine
    create_table :machines do |t|
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
