class ActionFamiliesController < ApplicationController
  def index
    movies = Movie.all

    action_family_movies = []

    movies.each do |movie|
      if movie.genre.include?("Action") && movie.genre.include?("Family")
        action_family_movies << movie
      end
    end

    action_family_movie = action_family_movies.sample

    render json: action_family_movie
  end
end
