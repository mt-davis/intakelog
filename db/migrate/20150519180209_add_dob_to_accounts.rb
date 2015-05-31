class AddDobToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :dob, :interger
  end
end
