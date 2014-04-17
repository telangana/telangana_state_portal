class AddImageToVillages < ActiveRecord::Migration
  def change
    add_column :villages, :image, :string
  end
end
