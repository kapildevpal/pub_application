class CreatePubProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :pub_profiles do |t|
      t.references :pub_owner, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :location
      t.integer :capacity
      t.boolean :is_smoking_allowed
      t.decimal :average_rating, precision: 3, scale: 2

      t.timestamps
    end
  end
end
