class AddBoatIdToRentals < ActiveRecord::Migration[6.0]
  
  def change
    add_column :rentals, :boat_id, :integer
  end

end
