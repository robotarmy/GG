require 'spec_helper'

describe "geo_photos/new.html.haml" do
  before(:each) do
    assign(:geo_photo, stub_model(GeoPhoto).as_new_record)
  end

  it "renders new geo_photo form" do
    render

    assert_select "form", :action => geo_photos_path, :method => "post" do
    end
  end
end
