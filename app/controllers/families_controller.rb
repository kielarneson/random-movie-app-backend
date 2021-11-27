class FamiliesController < ApplicationController
  # EXPERIMENT: Instead of 'index' this could be 'random'
  def index
    movies = Movie.all

    family_movies = []

    movies.each do |movie|
      if movie.genre.include?("Family")
        family_movies << movie
      end
    end

    family_movie = family_movies.sample

    # Sorting family movies by rotten tomatoes rating from highest to lowest
    # Just experimenting and re-learning how to use sort_by

    # EXPERIMENT: Create separate action called 'rated', but still on 'families' route
    # EXPERIMENT: I want to see how the 'families' controller handles 2 unique actions on a single route
    # sorted_family_movies = family_movies.sort_by { |movie| movie["metacritic_rating"].slice(0..2) }.reverse

    # Select should replace .each in all genres
    # sort_by is useless if generating a random movie

    # All in one line
    # family_movies = movies.select { |movie| movie.genre.include?("Family") }.sort_by { |movie| movie["metacritic_rating"].slice(0..2) }.reverse

    render json: family_movies
  end
end
