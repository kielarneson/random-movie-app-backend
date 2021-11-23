class ScifisController < ApplicationController
  def index
    movies = Movie.all

    sci_fi_movies = []

    movies.each do |movie|
      if movie.genre.include?("Sci-Fi")
        sci_fi_movies << movie
      end
    end

    sci_fi_movie = sci_fi_movies.sample

    render json: sci_fi_movie
  end
end
