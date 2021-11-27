class ActionScifisController < ApplicationController
  def index
    movies = Movie.all

    action_scifis = []

    movies.each do |movie|
      if movie.genre.include?("Action") && movie.genre.include?("Sci-Fi")
        action_scifis << movie
      end
    end

    action_scifi = action_scifis.sample

    render json: action_scifi
  end
end
