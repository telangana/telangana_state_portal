class AddImageToOfficialProfiles < ActiveRecord::Migration
  def change
    add_column :official_profiles, :image, :string
  end
end
