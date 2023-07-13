class CreateCityBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :city_bikes do |t|
      t.string :name
      t.string :company
      t.string :city
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
