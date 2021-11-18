class DramasController < ApplicationController

  # Have to make a decision here if I want to show movies that have Drama included
  # amongst other genres, or just movies whose only genre is Drama
  def index
    # movies = Movie.all

    # dramas = []

    # movies.each do |movie|
    #   if movie.genre.include?("Drama")
    #     dramas << movie
    #   end
    # end

    dramas = Movie.where(genre: "Drama")

    drama = dramas.sample

    render json: drama
  end
end
