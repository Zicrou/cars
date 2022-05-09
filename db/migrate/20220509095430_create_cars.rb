class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :insider_car_image
      t.string :front_car_image
      t.string :profile_car_image
      t.string :marque
      t.string :modele
      t.string :color
      t.integer :year
      t.bigint :distance
      t.text :description

      t.timestamps
    end
  end
end
