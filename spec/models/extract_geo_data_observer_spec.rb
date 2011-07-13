require 'spec_helper'

describe ExtractGeoDataObserver do
  subject { ExtractGeoDataObserver.instance }

  before do
    ActiveRecord::Observer.enable_observers
  end

  it "reject non geo" do
    pending

    geo_photo = stub_model(GeoPhoto)

    file      = double(:mock_carrierwave)
    file.should_receive(:current_path).and_return(geo_image_fixture_path)

    geo_photo.should_receive(:file).and_return(file)
    geo_photo.should_receive(:latitude=).with(37.71642166666667)
    geo_photo.should_receive(:longitude=).with(-122.401845)
    geo_photo.should_receive(:save!)

    subject.after_create(geo_photo)
  end

  it "extracts exif data from file" do
    geo_photo = stub_model(GeoPhoto)

    file      = double(:mock_carrierwave)
    file.should_receive(:current_path).and_return(geo_image_fixture_path)

    geo_photo.should_receive(:file).and_return(file)
    geo_photo.should_receive(:latitude=).with(37.71642166666667)
    geo_photo.should_receive(:longitude=).with(-122.401845)
    geo_photo.should_receive(:save!)

    subject.after_create(geo_photo)
  end

  after do
    ActiveRecord::Observer.disable_observers
  end
end
