class ActionHorrorsController < ApplicationController
  def index
    movies = Movie.all

    action_horrors = []

    movies.each do |movie|
      if movie.genre.include?("Action") && movie.genre.include?("Horror")
        action_horrors << movie
      end
    end

    action_horror = action_horrors.sample

    render json: action_horror
  end
end
