class RenameTableHotelRate < ActiveRecord::Migration
  def change
     rename_table :hotelrates, :hotel_rates
  end

  def down
  end
end
