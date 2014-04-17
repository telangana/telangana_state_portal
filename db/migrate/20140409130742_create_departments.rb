class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.integer :minister_id
      t.string :name
      t.text :description
      t.string :website
      t.string :category

      t.timestamps
    end
  end
end
