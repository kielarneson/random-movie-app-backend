Rails.application.routes.draw do
  get "/movies" => "movies#index"
  post "/movies" => "movies#create"
  get "/movies/:title" => "movies#show"

  get "/action_comedies" => "action_comedies#index"

  get "/actions" => "actions#index"

  get "/biographies" => "biographies#index"

  get "/comedies" => "comedies#index"

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
