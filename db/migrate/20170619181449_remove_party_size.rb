class RemovePartySize < ActiveRecord::Migration[5.0]
  def self.up
    add_column :reservations, :party_size, :integer
  end
  def self.up
    remove_column :users, :party_size
  end
end
