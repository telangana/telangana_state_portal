class AddBannerToMps < ActiveRecord::Migration
  def change
    add_column :mps, :banner, :string
  end
end
