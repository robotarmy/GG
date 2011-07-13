require 'spec_helper'

describe "GeoPhotos" do
  describe "GET /geo_photos/new" do
    it "NEW GeoPhoto" do
      visit new_geo_photo_path
      page.attach_file('geo_photo[file]',geo_image_fixture_path)
      page.click_on "SAVE"
    end
  end
end
