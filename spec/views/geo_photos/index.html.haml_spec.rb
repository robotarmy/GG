require 'spec_helper'

describe "geo_photos/index.html.erb" do
  before(:each) do
    assign(:geo_photos, [
      stub_model(GeoPhoto),
      stub_model(GeoPhoto)
    ])
  end

  it "renders a list of geo_photos" do
    render
  end
end
