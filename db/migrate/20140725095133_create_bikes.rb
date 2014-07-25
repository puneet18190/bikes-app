class CreateBikes < ActiveRecord::Migration
  def self.up
    create_table :bikes do |t|
    t.string   :make
    t.string   :model
    t.string   :registration
    t.string   :mileage
    t.string   :postcode
    t.text     :other
    t.string   :value_wanted
    t.integer  :submission_id
    end
  end
  def self.down
  	drop_table :bikes
  end 
end
