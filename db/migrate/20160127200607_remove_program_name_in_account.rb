class RemoveProgramNameInAccount < ActiveRecord::Migration
  def change
    remove_column :accounts, :program_name, :string
    remove_column :accounts, :program_program, :text
  end
end
