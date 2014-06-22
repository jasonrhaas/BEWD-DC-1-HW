class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.integer :year_released
      t.integer :rating, default: 3
      t.timestamps
    end
  end
end
