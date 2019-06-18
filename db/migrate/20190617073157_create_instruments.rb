class CreateInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments do |t|
      t.string :brand
      t.string :category
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
