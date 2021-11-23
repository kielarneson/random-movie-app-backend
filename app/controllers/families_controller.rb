class FamiliesController < ApplicationController
  def index
    movies = Movie.all

    family_movies = []

    movies.each do |movie|
      if movie.genre.include?("Family")
        family_movies << movie
      end
    end

    family_movie = family_movies.sample

    render json: family_movie
  end
end
