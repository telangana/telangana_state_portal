class AddImageToTenders < ActiveRecord::Migration
  def change
    add_column :tenders, :image, :string
  end
end
