class CreateInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments do |t|
      t.string :category
      t.string :address
      t.string :description
      t.string :photo
      t.references :member, foreign_key: true

      t.timestamps
    end
  end
end
