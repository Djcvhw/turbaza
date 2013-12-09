class RemoveCountryIdFromCamps < ActiveRecord::Migration
  def change
    remove_column :camps, :country_id, :integer
  end
end
