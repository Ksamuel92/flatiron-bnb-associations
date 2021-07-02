class AddColumnsToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :description, :text
    add_column :reviews, :rating, :integer
  end
end
