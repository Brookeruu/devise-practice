class PhotosController < ApplicationController
  def index
    @photos = photo.all
  end

  
end
