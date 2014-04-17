class AddProiortyToStateCadres < ActiveRecord::Migration
  def change
    add_column :state_cadres, :proiorty, :string
  end
end
