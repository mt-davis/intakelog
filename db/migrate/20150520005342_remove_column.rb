class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :accounts, :dob
  end
end
