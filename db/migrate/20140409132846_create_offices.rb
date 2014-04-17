class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.text :description
      t.string :website
      t.string :facebook_page
      t.string :ph_no1
      t.string :ph_no2
      t.text :address

      t.timestamps
    end
  end
end
