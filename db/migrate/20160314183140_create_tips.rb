class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.integer :user_id
      t.integer :commission_rate
      t.integer :load_amount
      t.integer :commission_amount

      t.timestamps null: false
    end
  end
end
