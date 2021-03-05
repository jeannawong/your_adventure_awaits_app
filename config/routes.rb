Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE

  namespace :api do
    get "/journeys" => "journeys#index"
    get "/journeys/:id" => "journeys#show"
    patch "/journeys/:id" => "journeys#update"
    delete "/journeys/:id" => "journeys#destroy"

    get "/images" => "images#index"
    post "/images" => "images#create"
    patch "/images/:id" => "images#update"

    get "/orders" => "orders#index"
    post "/orders" => "orders#create"
    get "/orders/:id" => "orders#show"
    delete "/orders/:id" => "orders#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/adventures" => "adventures#index"
    post "/adventures" => "adventures#create"
    get "/adventures/:id" => "adventures#show"
    patch "/adventures/:id" => "adventures#update"
    delete "/adventures/:id" => "adventures#destroy"

    get "/helpful_hints" => "helpful_hints#index"
    get "/helpful_hints/:id" => "helpful_hints#show"
    patch "/helpful_hints/:id" => "helpful_hints#update"
    delete "/helpful_hints/:id" => "helpful_hints#destroy"

    get "/adventures_helpful_hints" => "adventures_helpful_hints#index"
    post "/adventures_helpful_hints" => "adventures_helpful_hints#create"
    get "/adventures_helpful_hints/:id" => "adventures_helpful_hints#show"
    patch "/adventures_helpful_hints/:id" => "adventures_helpful_hints#update"
    delete "/adventures_helpful_hints/:id" => "adventures_helpful_hints#destroy"
  end
end
