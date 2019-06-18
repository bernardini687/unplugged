class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :booking, foreign_key: true
      t.text :content
      t.decimal :rating, precision: 2, scale: 1

      t.timestamps
    end
  end
end
