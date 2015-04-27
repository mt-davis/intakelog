class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone
      t.datetime "created_at"
      t.datetime "updated_at"
      t.timestamps
      t.text :program
    end
  end
end
