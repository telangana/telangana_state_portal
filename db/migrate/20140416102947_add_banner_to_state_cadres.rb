class AddBannerToStateCadres < ActiveRecord::Migration
  def change
    add_column :state_cadres, :banner, :string
  end
end
