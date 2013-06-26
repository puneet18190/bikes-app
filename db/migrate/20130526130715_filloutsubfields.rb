class Filloutsubfields < ActiveRecord::Migration
  def up


    create_table :transactions do |t|
      t.integer :sub_customer_id
      t.integer :bike_id


      t.timestamps

    end

    add_index :transactions, :sub_customer_id
    add_index :transactions, :bike_id

    create_table :submissions do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone


      t.timestamps
    end

    create_table :machine do |t|
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
