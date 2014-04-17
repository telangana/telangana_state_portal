class AddBannerToVillages < ActiveRecord::Migration
  def change
    add_column :villages, :banner, :string
  end
end
