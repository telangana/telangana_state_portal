class CreateOfficialProfiles < ActiveRecord::Migration
  def change
    create_table :official_profiles do |t|
      t.string :name
      t.integer :job_position_id
      t.text :description

      t.timestamps
    end
  end
end
