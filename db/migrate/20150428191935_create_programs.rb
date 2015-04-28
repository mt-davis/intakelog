class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :program

      t.timestamps
    end
  end
end
