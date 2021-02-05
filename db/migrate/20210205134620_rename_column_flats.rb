class RenameColumnFlats < ActiveRecord::Migration[6.0]
  def change
    rename_column :flats, :price_per_nigth, :price_per_night
  end
end
