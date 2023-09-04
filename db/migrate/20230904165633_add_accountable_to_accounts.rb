class AddAccountableToAccounts < ActiveRecord::Migration[7.0]
  def change
    add_reference :accounts, :accountable, polymorphic: true, null: false
  end
end
