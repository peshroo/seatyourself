class AddingColumnstoReservations < ActiveRecord::Migration[5.0]
  def self.up
    add_column :reservations, :time, :integer
    add_column :reservations, :date, :Date
  end
end
