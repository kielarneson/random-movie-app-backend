class ActionDramasController < ApplicationController
  def index
    movies = Movie.all

    action_dramas = []

    movies.each do |movie|
      if movie.genre.include?("Action") && movie.genre.include?("Drama")
        action_dramas << movie
      end
    end

    action_drama = action_dramas.sample

    render json: action_drama
  end
end
