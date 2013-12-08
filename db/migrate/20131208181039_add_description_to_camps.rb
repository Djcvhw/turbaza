class AddDescriptionToCamps < ActiveRecord::Migration
  def change
    add_column :camps, :description, :string
  end
end
