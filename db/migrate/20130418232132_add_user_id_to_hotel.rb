class AddUserIdToHotel < ActiveRecord::Migration
  def change
    add_column :hotels, :user_id, :integer
  end
end
