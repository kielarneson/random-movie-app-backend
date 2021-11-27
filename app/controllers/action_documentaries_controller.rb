class ActionDocumentariesController < ApplicationController
  def index
    movies = Movie.all

    action_documentaries = []

    movies.each do |movie|
      if movie.genre.include?("Action") && movie.genre.include?("Documentary")
        action_documentaries << movie
      end
    end

    action_documentary = action_documentaries.sample

    render json: action_documentary
  end
end
