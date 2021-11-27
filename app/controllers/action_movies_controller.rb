class ActionMoviesController < ApplicationController
  def index
    movies = Movie.all

    actions = []

    movies.each do |movie|
      if movie.genre.include?("Action")
        actions << movie
      end
    end

    action = actions.sample

    render json: action
  end

  def comedy
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
