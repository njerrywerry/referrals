class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.string :referrer_id
      t.string :referral_id

      t.timestamps null: false
    end
  end
end
