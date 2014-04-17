class AddImageToOffices < ActiveRecord::Migration
  def change
    add_column :offices, :image, :string
  end
end
