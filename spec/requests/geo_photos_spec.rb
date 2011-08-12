require 'spec_helper'

describe "GeoPhotos" do
  describe "GET /geo_photos/new" do
    it "NEW GeoPhoto" do
      visit new_geo_photo_path
      page.attach_file('geo_photo[file]',geo_image_fixture_path)
      lambda do
        page.click_on "SAVE"
      end.should change(GeoPhoto,:count).by(1)
    end
  end
end
