class RemovePartySizefromUser < ActiveRecord::Migration[5.0]
  def self.up
    remove_column :users, :party_size
  end
end
