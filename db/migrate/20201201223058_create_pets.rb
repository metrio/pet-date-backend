class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :temper
      t.integer :age
      t.string :breed
      t.string :gender
      t.string :species
      

      t.timestamps
    end
  end
end
