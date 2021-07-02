class AddColumnsToListing < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :title, :string
    add_column :listings, :description, :text
    add_column :listings, :address, :string
  end
end
