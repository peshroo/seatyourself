class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.text :menu
      t.references :user
      t.references :reservation
      t.timestamps
    end
  end
end
