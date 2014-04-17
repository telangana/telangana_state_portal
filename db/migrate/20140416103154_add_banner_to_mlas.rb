class AddBannerToMlas < ActiveRecord::Migration
  def change
    add_column :mlas, :banner, :string
  end
end
