class AddColumnToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :accepted, :boolean
  end
end
