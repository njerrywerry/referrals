class RemoveLoadAmountFromCommission < ActiveRecord::Migration
  def change
    remove_column :commissions, :load_amount, :decimal
  end
end
