class CreateFlats < ActiveRecord::Migration[7.1]
  def change
    create_table :flats do |t|
      t.integer :price_per_month
      t.text :location
      t.string :pictures
      t.text :description
      t.integer :autonomy_level
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
