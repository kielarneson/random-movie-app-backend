class CrimesController < ApplicationController
  def index
    movies = Movie.all

    crimes = []

    movies.each do |movie|
      if movie.genre.include?("Crime")
        crimes << movie
      end
    end

    crime = crimes.sample

    render json: crime
  end
end
