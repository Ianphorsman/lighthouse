class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :plot
      t.text :description
      t.string :genres
      t.string :directors
      t.string :writers
      t.string :release_date
      t.decimal :ranking
      t.string :poster_url
      t.string :runtime

      t.timestamps null: false
    end
  end
end
