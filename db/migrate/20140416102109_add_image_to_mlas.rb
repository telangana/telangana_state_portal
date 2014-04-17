class AddImageToMlas < ActiveRecord::Migration
  def change
    add_column :mlas, :image, :string
  end
end
