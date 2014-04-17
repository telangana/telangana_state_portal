class AddBannerToDistricts < ActiveRecord::Migration
  def change
    add_column :districts, :banner, :string
  end
end
