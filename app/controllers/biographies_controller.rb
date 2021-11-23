class BiographiesController < ApplicationController
  def index
    movies = Movie.all

    biographies = []

    movies.each do |movie|
      if movie.genre.include?("Biography")
        biographies << movie
      end
    end

    biography = biographies.sample

    render json: biography
  end
end
