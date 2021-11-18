class MoviesController < ApplicationController
  def index
    movies = Movie.all

    # This is generating the random movie
    # Need to move the random aspect to a route other than index. Maybe random?
    movie = movies.sample

    render json: movie
  end

  def create
    # Really understand how I have access to imdb_id here!
    movie = Movie.find_by(imdb_id: params[:imdb_id])

    if movie
      render json: { message: "This movie already exists in the database. See 'Show movie' in console for specific movie information" }, status: :im_used
    else
      movie = Movie.new(
        title: params[:title],
        year: params[:year],
        rated: params[:rated],
        released: params[:released],
        runtime: params[:runtime],
        formatted_runtime: params[:formatted_runtime],
        actors: params[:actors],
        awards: params[:awards],
        box_office: params[:box_office],
        director: params[:director],
        genre: params[:genre],
        language: params[:language],
        plot: params[:plot],
        poster: params[:poster],
        entertainment_type: params[:type],
        writer: params[:writer],
        imdb_id: params[:imdb_id],
        imdb_rating: params[:imdb_rating],
        imdb_votes: params[:imdb_votes],
        internet_movie_database_rating: params[:internet_movie_database_rating],
        rotten_tomatoes_rating: params[:rotten_tomatoes_rating],
        metacritic_rating: params[:metacritic_rating],
      )

      if movie.save
        render json: { message: "This is a new movie for the database! Movie successfully saved", movie: movie }, status: :created
      else
        render json: { errors: movie.errors.full_messages }, status: :bad_request
      end
    end
  end

  def show
    response = HTTP.get("http://www.omdbapi.com/?apikey=#{Rails.application.credentials.omdb_api_key}&t=#{params[:title]}")
    movie = JSON.parse(response.body)

    runtime = movie["Runtime"].to_i

    if runtime < 120
      movie["formatted_runtime"] = "#{runtime / 60} hour and #{runtime - 60} minutes"
    elsif runtime < 180
      movie["formatted_runtime"] = "#{runtime / 60} hours and #{runtime - 120} minutes"
    elsif runtime < 240
      movie["formatted_runtime"] = "#{runtime / 60} hours and #{runtime - 180} minutes"
    elsif runtime < 300
      movie["formatted_runtime"] = "#{runtime / 60} hours and #{runtime - 240} minutes"
    end

    render json: movie
  end
end
