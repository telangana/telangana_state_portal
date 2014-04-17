class AddImageToMinisters < ActiveRecord::Migration
  def change
    add_column :ministers, :image, :string
  end
end
