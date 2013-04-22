class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.integer :rate

      t.timestamps
    end
  end
end
