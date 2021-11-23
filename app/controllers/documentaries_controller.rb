class DocumentariesController < ApplicationController
  def index
    movies = Movie.all

    documentaries = []

    movies.each do |movie|
      if movie.genre.include?("Documentary")
        documentaries << movie
      end
    end

    documentary = documentaries.sample

    render json: documentary
  end
end
