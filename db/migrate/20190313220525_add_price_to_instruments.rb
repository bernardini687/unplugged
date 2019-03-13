class AddPriceToInstruments < ActiveRecord::Migration[5.2]
  def change
    add_column :instruments, :price, :integer, default: 0, null: false
  end
end
