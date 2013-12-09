class RemoveRegionIdFromCamps < ActiveRecord::Migration
  def change
    remove_column :camps, :region_id, :integer
  end
end
