Rails.application.routes.draw do
  get "/movies" => "movies#index"
  post "/movies" => "movies#create"
  get "/movies/:title" => "movies#show"

  get "/actions" => "actions#index"

  get "/comedies" => "comedies#index"

  get "/crimes" => "crimes#index"

  get "/dramas" => "dramas#index"
end
