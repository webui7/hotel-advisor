class CreateHotelrates < ActiveRecord::Migration
  def change
    create_table :hotelrates do |t|
      t.integer :rate

      t.timestamps
    end
  end
end
