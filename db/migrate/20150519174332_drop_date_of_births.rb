class DropDateOfBirths < ActiveRecord::Migration
  def change
    drop_table :date_of_births
  end
end
