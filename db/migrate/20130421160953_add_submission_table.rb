class AddSubmissionTable < ActiveRecord::Migration
  def up
    create_table :submissions do |t|
      t.string :name


      t.timestamps
    end
  end


  def down
    drop_table :submissions
  end
end
