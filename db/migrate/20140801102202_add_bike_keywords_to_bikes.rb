class AddBikeKeywordsToBikes < ActiveRecord::Migration
  def change
    add_column :bikes, :bike_keywords, :text
  end
end
