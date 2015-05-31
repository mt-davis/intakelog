class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :accounts, :return, :return_client
  end
end
