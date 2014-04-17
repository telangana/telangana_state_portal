class AddImageToStateCadres < ActiveRecord::Migration
  def change
    add_column :state_cadres, :image, :string
  end
end
