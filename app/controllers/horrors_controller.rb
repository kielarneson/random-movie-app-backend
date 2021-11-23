class HorrorsController < ApplicationController
  def index
    movies = Movie.all

    horror_movies = []

    movies.each do |movie|
      if movie.genre.include?("Horror")
        horror_movies << movie
      end
    end

    horror_movie = horror_movies.sample

    render json: horror_movie
  end
end
