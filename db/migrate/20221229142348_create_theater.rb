class CreateTheater < ActiveRecord::Migration[6.1]
  def change
    create_table :theaters do |t|
    t.string :theater_name
    t.belongs_to :movie
    t.belongs_to :rating
    t.timestamps
    end
  end
end
