class AddReturnToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :return, :boolean, default: false
  end
end
