class CreateTinylinks < ActiveRecord::Migration
  def change
    create_table :tinylinks do |t|
      t.string :link
      t.string :hash

      t.timestamps
    end
  end
end
