Rails.application.routes.draw do
  #get 'slideshow/show'
  get "/show", to: "slideshow#show"

  #get 'album/album'
  get "/album", to: "album#album"

  #get 'homepage/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homepage#home'
end
