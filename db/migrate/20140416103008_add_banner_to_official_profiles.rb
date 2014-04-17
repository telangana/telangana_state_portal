class AddBannerToOfficialProfiles < ActiveRecord::Migration
  def change
    add_column :official_profiles, :banner, :string
  end
end
