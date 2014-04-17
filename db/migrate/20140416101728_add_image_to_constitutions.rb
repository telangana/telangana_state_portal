class AddImageToConstitutions < ActiveRecord::Migration
  def change
    add_column :constitutions, :image, :string
  end
end
