class ComediesController < ApplicationController
  def index
    movies = Movie.all

    comedies = []

    movies.each do |movie|
      if movie.genre.include?("Comedy")
        comedies << movie
      end
    end

    comedy = comedies.sample

    render json: comedy
  end
end
