class AddImageToOnlineServices < ActiveRecord::Migration
  def change
    add_column :online_services, :image, :string
  end
end
