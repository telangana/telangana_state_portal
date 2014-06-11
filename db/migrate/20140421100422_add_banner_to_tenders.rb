class AddBannerToTenders < ActiveRecord::Migration
  def change
    add_column :tenders, :banner, :string
  end
end
