class AddUserToInstruments < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :user, :instruments, name: :owner, on_delete: :cascade
  end
end
