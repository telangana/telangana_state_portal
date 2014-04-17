class CreateMlas < ActiveRecord::Migration
  def change
    create_table :mlas do |t|
      t.string :name
      t.text :description
      t.string :website
      t.string :facebook_page
      t.integer :constitution_id
      t.text :personal_info

      t.timestamps
    end
  end
end
