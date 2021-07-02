class AddGuestRefToReservations < ActiveRecord::Migration[5.0]
  def change
    add_reference :reservations, :guest, foreign_key: true
  end
end
