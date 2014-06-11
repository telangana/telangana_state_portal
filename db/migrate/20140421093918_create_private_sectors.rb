class CreatePrivateSectors < ActiveRecord::Migration
  def change
    create_table :private_sectors do |t|
      t.string :name
      t.text :description
      t.string :website
      t.string :facebook_page
      t.integer :district_id

      t.timestamps
    end
  end
end
