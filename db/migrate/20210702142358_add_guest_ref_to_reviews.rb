class AddGuestRefToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :guest, foreign_key: true
  end
end
