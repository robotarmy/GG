class GeoPhotosController < ApplicationController
  def index
    @geo_photos = GeoPhoto.all
  end

  def new

  end

  def create
    GeoPhoto.create(params[:geo_photo])
    head :ok
  end
end
