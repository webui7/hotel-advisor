class RenameColumnInCommentsTableHotelrateId < ActiveRecord::Migration
  def up
    rename_column :comments, :hotelrate_id, :hotel_rate_id
  end

  def down
  end
end
