class ActionRomancesController < ApplicationController
  def index
    movies = Movie.all

    action_romances = []

    movies.each do |movie|
      if movie.genre.include?("Action") && movie.genre.include?("Romance")
        action_romances << movie
      end
    end

    action_romance = action_romances.sample

    render json: action_romance
  end
end
