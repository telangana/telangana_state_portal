class CreateOnlineServices < ActiveRecord::Migration
  def change
    create_table :online_services do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :website

      t.timestamps
    end
  end
end
