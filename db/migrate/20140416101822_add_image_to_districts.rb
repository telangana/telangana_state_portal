class AddImageToDistricts < ActiveRecord::Migration
  def change
    add_column :districts, :image, :string
  end
end
