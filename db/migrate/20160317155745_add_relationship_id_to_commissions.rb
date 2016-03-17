class AddRelationshipIdToCommissions < ActiveRecord::Migration
  def change
    add_column :commissions, :relationship_id, :integer
  end
end
