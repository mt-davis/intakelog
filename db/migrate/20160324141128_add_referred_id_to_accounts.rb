class AddReferredIdToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :referred_id, :integer
  end
end
