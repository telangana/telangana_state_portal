class AddImageToJobPositions < ActiveRecord::Migration
  def change
    add_column :job_positions, :image, :string
  end
end
