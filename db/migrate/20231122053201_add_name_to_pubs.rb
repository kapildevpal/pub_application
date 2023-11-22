class AddNameToPubs < ActiveRecord::Migration[7.0]
  def change
    add_column :pubs, :name, :string
  end
end
