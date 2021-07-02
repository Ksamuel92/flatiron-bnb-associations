class AddColumnsToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :checkin, :date
    add_column :reservations, :checkout, :date
  end
end
