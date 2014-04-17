class CreateStateCadres < ActiveRecord::Migration
  def change
    create_table :state_cadres do |t|
      t.string :name
      t.string :candiate_name
      t.text :description
      t.string :ph_no1
      t.string :ph_no2

      t.timestamps
    end
  end
end
