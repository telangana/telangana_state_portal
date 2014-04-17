class AddImageToDepartments < ActiveRecord::Migration
  def change
    add_column :departments, :image, :string
  end
end
