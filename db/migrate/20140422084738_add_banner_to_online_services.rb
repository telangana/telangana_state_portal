class AddBannerToOnlineServices < ActiveRecord::Migration
  def change
    add_column :online_services, :banner, :string
  end
end
