class AddBannerToDepartments < ActiveRecord::Migration
  def change
    add_column :departments, :banner, :string
  end
end
