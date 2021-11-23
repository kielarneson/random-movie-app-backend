class RomancesController < ApplicationController
  def index
    movies = Movie.all

    romance_movies = []

    movies.each do |movie|
      if movie.genre.include?("Romance")
        romance_movies << movie
      end
    end

    romance_movie = romance_movies.sample

    render json: romance_movie
  end
end
