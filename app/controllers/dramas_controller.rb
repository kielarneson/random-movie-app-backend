class DramasController < ApplicationController
  # Decided to include all movies that include 'Drama' to be consistent with other filters
  def index
    movies = Movie.all

    dramas = []

    movies.each do |movie|
      if movie.genre.include?("Drama")
        dramas << movie
      end
    end

    drama = dramas.sample

    render json: drama

    #
    # Returns movies where 'Drama' is the only genre
    # dramas = Movie.where(genre: "Drama")

    # drama = dramas.sample

    # render json: drama
    #
  end
end
