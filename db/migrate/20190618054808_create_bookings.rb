class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :instrument, foreign_key: true
      t.date :checkin
      t.date :checkout
      t.boolean :confirmed

      t.timestamps
    end
  end
end
