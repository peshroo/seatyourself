class AddPartySizeToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :party_size, :integer
  end
end
