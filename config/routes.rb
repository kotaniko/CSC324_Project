Rails.application.routes.draw do
  resources :collections
  get "/show", to: "slideshow#show"

  get "/album", to: "album#album"
  get "/album/photo", to: "album#photo"

  get "/about", to: "about#about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homepage#home'
end
