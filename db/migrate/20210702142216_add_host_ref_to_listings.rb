class AddHostRefToListings < ActiveRecord::Migration[5.0]
  def change
    add_reference :listings, :host, foreign_key: true
  end
end
