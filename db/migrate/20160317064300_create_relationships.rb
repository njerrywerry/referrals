class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :referrer_id
      t.integer :referral_id

      t.timestamps null: false
    end
  end
end
