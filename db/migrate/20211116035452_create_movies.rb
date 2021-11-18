class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.string :rated
      t.string :released
      t.string :runtime
      t.string :formatted_runtime
      t.string :actors
      t.string :awards
      t.string :box_office
      t.string :director
      t.string :genre
      t.string :language
      t.string :plot
      t.string :poster
      t.string :entertainment_type
      t.string :writer
      t.string :imdb_id
      t.string :imdb_rating
      t.string :imdb_votes
      t.string :internet_movie_database_rating
      t.string :rotten_tomatoes_rating
      t.string :metacritic_rating

      t.timestamps
    end
  end
end
