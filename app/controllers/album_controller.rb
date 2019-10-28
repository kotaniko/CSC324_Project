class AlbumController < ApplicationController
  def album
    @albums = Collection.all
    @album_names = Collection.select(:name).distinct
  end

  def photo 
    selected_album = params[:album_name]
    @photos = Collection.where(name: selected_album)
  end

end
