class CreatePlaydates < ActiveRecord::Migration[6.0]
  def change
    create_table :playdates do |t|
      t.integer :pet_id
      t.integer :pet2_id
      t.string :date
      t.string :location
      t.integer :longitude 
      t.integer :latitude 

      t.timestamps
    end
  end
end
