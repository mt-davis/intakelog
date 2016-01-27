class RenameColumnInPrograms < ActiveRecord::Migration
  def change
    rename_column :programs, :program, :name
  end
end