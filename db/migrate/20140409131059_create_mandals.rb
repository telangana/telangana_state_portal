class CreateMandals < ActiveRecord::Migration
  def change
    create_table :mandals do |t|
      t.string :name
      t.integer :district_id
      t.text :description
      t.string :website
      t.string :facebook_page

      t.timestamps
    end
  end
end
