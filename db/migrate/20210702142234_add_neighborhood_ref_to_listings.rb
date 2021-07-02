class AddNeighborhoodRefToListings < ActiveRecord::Migration[5.0]
  def change
    add_reference :listings, :neighborhood, foreign_key: true
  end
end
