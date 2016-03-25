class CreateReferreds < ActiveRecord::Migration
  def change
    create_table :referreds do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
