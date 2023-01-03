class CreateRating < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
          t.string :name 
          t.integer :movie_id
          t.integer :rating
    end
  end
end
