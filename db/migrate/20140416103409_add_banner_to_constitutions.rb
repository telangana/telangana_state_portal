class AddBannerToConstitutions < ActiveRecord::Migration
  def change
    add_column :constitutions, :banner, :string
  end
end
