class AddingDateTimetoRes < ActiveRecord::Migration[5.0]
  def self.up
    add_column :reservations, :date_time, :DateTime
  end
end
