class AddBannerToMandals < ActiveRecord::Migration
  def change
    add_column :mandals, :banner, :string
  end
end
