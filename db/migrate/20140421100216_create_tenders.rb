class CreateTenders < ActiveRecord::Migration
  def change
    create_table :tenders do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :website
      t.integer :department_id

      t.timestamps
    end
  end
end
