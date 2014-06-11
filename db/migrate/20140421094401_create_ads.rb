class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :website
      t.integer :district_id
      t.integer :mandal_id
      t.integer :constitution_id

      t.timestamps
    end
  end
end
