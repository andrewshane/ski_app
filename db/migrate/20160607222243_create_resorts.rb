class CreateResorts < ActiveRecord::Migration
  def change
    create_table :resorts do |t|
      t.string :lng
      t.string :lat
      t.string :flight_cost
      t.string :airport
      t.string :forecast
      t.string :state
      t.string :name

      t.timestamps

    end
  end
end
