require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the GeoPhotosHelper. For example:
#
# describe GeoPhotosHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe GeoPhotosHelper do
  it "has a helper for geo_photos" do
    helper.instance_variable_set('@geo_photos',:set)
    helper.geo_photos.should == :set
  end
end
