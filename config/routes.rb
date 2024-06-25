Rails.application.routes.draw do
  get "/items" => "items#index"
  get "/items/:id" => "items#show"
  post "/items/" => "items#create"
  patch "/items/:id" => "items#update"
  delete "/items/:id" => "items#destroy"

  get "/images" => "images#index"
  get "/images/:id" => "images#show"
  post "/images/" => "images#create"
  patch "/images/:id" => "images#update"
  delete "/images/:id" => "images#destroy"
end
