class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :street_number
      t.string :street_name
      t.text :menu
      has_many :user_id
      has_many :reservation_id
      t.timestamps
    end
  end
end
