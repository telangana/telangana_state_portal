class CreateMps < ActiveRecord::Migration
  def change
    create_table :mps do |t|
      t.string :name
      t.text :description
      t.string :website
      t.string :facebook_page
      t.integer :district_id
      t.text :personal_info

      t.timestamps
    end
  end
end
