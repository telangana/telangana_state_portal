class AddCandiateNameToMinisters < ActiveRecord::Migration
  def change
    add_column :ministers, :candiate_name, :string
  end
end
