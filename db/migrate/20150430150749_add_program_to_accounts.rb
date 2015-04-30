class AddProgramToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :program, :string
  end
end
