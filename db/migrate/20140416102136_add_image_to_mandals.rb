class AddImageToMandals < ActiveRecord::Migration
  def change
    add_column :mandals, :image, :string
  end
end
