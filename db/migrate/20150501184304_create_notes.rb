class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :comment

      t.timestamps
    end
  end
end
