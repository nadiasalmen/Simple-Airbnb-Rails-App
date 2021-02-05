class CreateFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :price_per_nigth
      t.integer :number_of_guests

      t.timestamps
    end
  end
end
