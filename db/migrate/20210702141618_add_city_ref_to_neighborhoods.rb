class AddCityRefToNeighborhoods < ActiveRecord::Migration[5.0]
  def change
    add_reference :neighborhoods, :city, foreign_key: true
  end
end
