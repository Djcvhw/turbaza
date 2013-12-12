class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :country_id
      t.integer :region_id
      t.integer :city_id
      t.integer :camp_id
    end
  end
end
