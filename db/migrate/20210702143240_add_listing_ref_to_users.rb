class AddListingRefToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :listing, foreign_key: true
  end
end
