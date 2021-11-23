class ActionComediesController < ApplicationController
  def index
    movies = Movie.all

    action_comedies = []

    movies.each do |movie|
      if movie.genre.include?("Action") && movie.genre.include?("Comedy")
        action_comedies << movie
      end
    end

    action_comedy = action_comedies.sample

    render json: action_comedy
  end
end
