class AddUserToInstruments < ActiveRecord::Migration[5.2]
  def change
    add_reference :instruments, :user, index: true
    add_foreign_key :instruments, :users, name: :owner, on_delete: :cascade
  end
end
