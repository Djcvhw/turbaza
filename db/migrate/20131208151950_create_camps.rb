class CreateCamps < ActiveRecord::Migration
  def change
    create_table :camps do |t|
      t.string :name
      t.integer :country_id
      t.integer :region_id
      t.integer :city_id

      t.timestamps
    end
    add_index :camps, :city_id
  end
end
