class AddFieldToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :program_name, :string
  end
end
