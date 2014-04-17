class CreateConstitutions < ActiveRecord::Migration
  def change
    create_table :constitutions do |t|
      t.integer :district_id
      t.string :name
      t.text :description
      t.string :website

      t.timestamps
    end
  end
end
