class CreateSubmissions < ActiveRecord::Migration
  def self.up
    create_table :submissions do |t|
    t.string   :first_name
    t.string   :last_name
    t.string   :email
    t.string   :phone
    t.string   :make
    t.string   :model
    t.string   :registration
    t.string   :mileage
    t.string   :postcode
    t.text     :other
    t.string   :value_wanted
    t.string   :photos ,array: true
    t.string   :avatar
    t.timestamps
    end
  end
  def self.down
  	drop_table :submissions
  end 
end
