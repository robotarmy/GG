require 'spec_helper'

describe "GeoPhotos" do
  describe "GET /geo_photos" do
    it "works! (now write some real specs)" do
      get geo_photos_path
      response.status.should be(200)
    end
  end
end
