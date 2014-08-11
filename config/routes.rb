Rails.application.routes.draw do
  root "home#index"
  get "about" => "about#about"

  resources :gifs

end
