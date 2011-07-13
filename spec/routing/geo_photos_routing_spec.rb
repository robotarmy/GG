require "spec_helper"

describe GeoPhotosController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/geo_photos" }.should route_to(:controller => "geo_photos", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/geo_photos/new" }.should route_to(:controller => "geo_photos", :action => "new")
    end

    it "recognizes and generates #show" do
      pending
      { :get => "/geo_photos/1" }.should route_to(:controller => "geo_photos", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      pending
      { :get => "/geo_photos/1/edit" }.should route_to(:controller => "geo_photos", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/geo_photos" }.should route_to(:controller => "geo_photos", :action => "create")
    end

    it "recognizes and generates #update" do
      pending
      { :put => "/geo_photos/1" }.should route_to(:controller => "geo_photos", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      pending
      { :delete => "/geo_photos/1" }.should route_to(:controller => "geo_photos", :action => "destroy", :id => "1")
    end

  end
end
