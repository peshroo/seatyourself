class RemoveoldDateTime < ActiveRecord::Migration[5.0]
  def self.up
    remove_column :reservations, :date_time
  end
end
