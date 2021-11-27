class ActionBiographiesController < ApplicationController
  def index
    movies = Movie.all

    action_biographies = []

    movies.each do |movie|
      if movie.genre.include?("Action") && movie.genre.include?("Biography")
        action_biographies << movie
      end
    end

    action_biography = action_biographies.sample

    render json: action_biography
  end
end
