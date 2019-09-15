Rails.application.routes.draw do
  #get 'slideshow/show'
  get "/show", to: "slideshow#show"
  get '/slideshow/show'

  #get 'album/album'
  get "/album", to: "album#album"
  get '/album/album'

  get 'homepage/home'
  #get "/", to: "homepage#home", as: "root"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homepage#home'
end
