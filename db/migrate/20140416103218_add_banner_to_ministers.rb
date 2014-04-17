class AddBannerToMinisters < ActiveRecord::Migration
  def change
    add_column :ministers, :banner, :string
  end
end
