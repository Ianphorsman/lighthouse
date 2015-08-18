class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
        t.string        :title
        t.text          :description
        t.integer       :duration
        t.datetime      :release_date
        t.string        :genre
        t.string        :director
        t.string        :poster_url
      t.timestamps null: false
    end
  end
end
