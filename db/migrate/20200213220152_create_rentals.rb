class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      
      t.belongs_to :customer, null: false, foreign_key: true
      t.datetime :reservation

      t.timestamps
    end
  end
end
