class ActionSportsController < ApplicationController
  def index
    movies = Movie.all

    action_sports = []

    movies.each do |movie|
      if movie.genre.include?("Action") && movie.genre.include?("Sport")
        action_sports << movie
      end
    end

    action_sport = action_sports.sample

    render json: action_sport
  end
end
