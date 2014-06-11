class AddCategoryToPrivateSectors < ActiveRecord::Migration
  def change
    add_column :private_sectors, :category, :string
  end
end
