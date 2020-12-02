class AddImgToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :img, :string
  end
end
