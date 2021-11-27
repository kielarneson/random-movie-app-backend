class ActionThrillersController < ApplicationController
  def index
    movies = Movie.all

    action_thrillers = []

    movies.each do |movie|
      if movie.genre.include?("Action") && movie.genre.include?("Thriller")
        action_thrillers << movie
      end
    end

    action_thriller = action_thrillers.sample

    render json: action_thriller
  end
end
