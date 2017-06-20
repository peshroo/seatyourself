class AddingExtraValuestoRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :neighborhood, :string
    add_column :restaurants, :price_range, :string
    add_column :restaurants, :summary, :text_field
  end
end
