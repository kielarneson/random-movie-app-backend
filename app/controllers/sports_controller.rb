class SportsController < ApplicationController
  def index
    movies = Movie.all

    sports_movies = []

    movies.each do |movie|
      if movie.genre.include?("Sport")
        sports_movies << movie
      end
    end

    sports_movie = sports_movies.sample

    render json: sports_movie
  end
end
