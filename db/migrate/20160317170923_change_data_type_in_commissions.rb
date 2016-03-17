class ChangeDataTypeInCommissions < ActiveRecord::Migration
  def self.up
    change_column :commissions, :commission_amount, :integer
  end

  def self.down
    change_column :commissions, :commission_amount, :decimal
  end
end
