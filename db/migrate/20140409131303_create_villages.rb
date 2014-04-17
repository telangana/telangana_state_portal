class CreateVillages < ActiveRecord::Migration
  def change
    create_table :villages do |t|
      t.string :name
      t.text :description
      t.string :facebook_page
      t.string :website
      t.integer :mandal_id

      t.timestamps
    end
  end
end
