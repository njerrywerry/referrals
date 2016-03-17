class ChangeDataTypeInWallets < ActiveRecord::Migration
  def self.up
    change_column :wallets, :load_amount, :integer
  end

  def self.down
    change_column :wallets, :load_amount, :decimal
  end
end
