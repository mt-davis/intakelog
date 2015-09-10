class AddInsurancesIdToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :insurance_id, :integer
  end
end
