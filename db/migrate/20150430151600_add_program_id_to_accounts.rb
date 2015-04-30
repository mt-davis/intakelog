class AddProgramIdToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :program_id, :integer
  end
end
