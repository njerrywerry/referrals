class CreateWallets < ActiveRecord::Migration
  def change
    create_table :wallets do |t|
      t.decimal :load_amount

      t.timestamps null: false
    end
  end
end
