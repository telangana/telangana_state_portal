class AddBannerToPrivateSectors < ActiveRecord::Migration
  def change
    add_column :private_sectors, :banner, :string
  end
end
