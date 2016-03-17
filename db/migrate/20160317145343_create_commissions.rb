class CreateCommissions < ActiveRecord::Migration
  def change
    create_table :commissions do |t|
      t.float :commission_rate
      t.decimal :load_amount, precision: 8, scale: 2
      t.decimal :commission_amount

      t.timestamps null: false
    end
  end
end
