class ActionsController < ApplicationController
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
end
