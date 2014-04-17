class AddImageToMps < ActiveRecord::Migration
  def change
    add_column :mps, :image, :string
  end
end
