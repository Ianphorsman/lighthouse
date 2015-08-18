class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
        t.string            :title
        t.string            :name
        t.text              :review
        t.integer           :rating
        t.string            :sentiment
      t.timestamps null: false
    end
  end
end
