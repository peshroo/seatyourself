class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
            :time
            :date
      t.datetime :date_time

      belongs_to :user_id
      t.timestamps
    end
  end
end
