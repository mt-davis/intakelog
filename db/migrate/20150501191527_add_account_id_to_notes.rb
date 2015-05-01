class AddAccountIdToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :account_id, :integer
  end
end
