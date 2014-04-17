class AddBannerToNews < ActiveRecord::Migration
  def change
    add_column :news, :banner, :string
  end
end
