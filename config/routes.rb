Rails.application.routes.draw do
  get "/movies" => "movies#index"
  post "/movies" => "movies#create"
  get "/movies/:title" => "movies#show"

  get "/action_comedies" => "action_comedies#index"
  get "/action_dramas" => "action_dramas#index"
  get "/action_families" => "action_families#index"
  get "/action_horrors" => "action_horrors#index"
  get "/action_romances" => "action_romances#index"
  get "/action_scifis" => "action_scifis#index"
  get "/action_sports" => "action_sports#index"

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
