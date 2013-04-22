class AddAveragerateFieldToHotel < ActiveRecord::Migration
  def change
     add_column :hotels, :averagerate, :decimal , :precision => 5, :scale => 2
  end
end
