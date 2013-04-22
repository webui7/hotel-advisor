class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :title
      t.integer :star_id
      t.boolean :breakfast, :default => false
      t.text :roomdescription
      t.string :photo
      t.decimal :roomprice, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
