Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE

  namespace :api do
    get "/journeys" => "journeys#index"
    get "/journeys/:id" => "journeys#show"
    patch "/journeys/:id" => "journeys#update"
    delete "/journeys/:id" => "journeys#destroy"
  end
end
