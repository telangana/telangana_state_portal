class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
