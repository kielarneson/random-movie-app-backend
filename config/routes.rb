Rails.application.routes.draw do
  get "/movies" => "movies#index"
  post "/movies" => "movies#create"
  get "/movies/:title" => "movies#show"

  # All Action movie combinations
  get "/action_movies" => "action_movies#index"
  get "/action_movies/comedy" => "action_movies#comedy"
  get "/action_movies/drama" => "action_movies#drama"

  # NOT CURRENTLY BEING USED ON FRONTEND
  get "/biographies" => "biographies#index"

  get "/comedies" => "comedies#index"

  # NOT CURRENTLY BEING USED ON FRONTEND
  get "/crimes" => "crimes#index"

  get "/documentaries" => "documentaries#index"

  get "/dramas" => "dramas#index"

  get "/families" => "families#index"

  get "/horrors" => "horrors#index"

  get "/romances" => "romances#index"

  get "/scifis" => "scifis#index"

  get "/sports" => "sports#index"

  get "/thrillers" => "thrillers#index"
end
