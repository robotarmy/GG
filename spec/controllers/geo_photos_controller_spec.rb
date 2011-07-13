require 'spec_helper'

describe GeoPhotosController do
  it "#index" do
    GeoPhoto.create!
    get :index
    assigns[:geo_photos].should_not be_empty
    response.should be_success
  end

  it "#create" do
    geo_photo = double(:geo_photo)
    GeoPhoto.should_receive(:create).and_return(geo_photo)
    post :create
    response.should be_success
  end
end
