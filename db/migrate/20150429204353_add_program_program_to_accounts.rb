class AddProgramProgramToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :program_program, :text
  end
end
