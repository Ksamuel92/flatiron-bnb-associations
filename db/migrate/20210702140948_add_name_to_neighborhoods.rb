class AddNameToNeighborhoods < ActiveRecord::Migration[5.0]
  def change
    add_column :neighborhoods, :name, :string
  end
end
