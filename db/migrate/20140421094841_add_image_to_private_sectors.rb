class AddImageToPrivateSectors < ActiveRecord::Migration
  def change
    add_column :private_sectors, :image, :string
  end
end
