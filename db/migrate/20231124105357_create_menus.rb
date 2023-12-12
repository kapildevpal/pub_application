class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.references :pub_profile, null: false, foreign_key: true
      t.string :name
      t.decimal :price, precision: 8, scale: 2  # Adjust precision and scale as needed
      t.integer :item_type, default: 0  # 0 for food, 1 for alcohol

      t.timestamps
    end
  end
end
