class CreateMinisters < ActiveRecord::Migration
  def change
    create_table :ministers do |t|
      t.string :name
      t.text :description
      t.string :website
      t.string :facebook_page
      t.integer :constitution_id

      t.timestamps
    end
  end
end
