class RemoveProgramFromAccounts < ActiveRecord::Migration
  def change
    remove_column :accounts, :program, :string
  end
end
