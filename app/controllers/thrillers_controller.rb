class ThrillersController < ApplicationController
  def index
    movies = Movie.all

    thriller_movies = []

    movies.each do |movie|
      if movie.genre.include?("Thriller")
        thriller_movies << movie
      end
    end

    thriller_movie = thriller_movies.sample

    render json: thriller_movie
  end
end
