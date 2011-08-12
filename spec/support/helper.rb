

module Helper
  ##
  ## Returns a GEO DATA IMAGE with the following fields
  ##  exif.gps_latitude_ref == 'N'
  ##  base_lat  = exif.gps_latitude[0].to_f
  ##  base_lat += exif.gps_latitude[1].to_f / 60 # minutes 
  ##  base_lat += exif.gps_latitude[2].to_f / 3600 #seconds 
  ##   => 37.71642166666667
  ##
  ##  exif.gps_latitude_ref == 'W'
  ##  base_long  = exif.gps_longitude[0].to_f
  ##  base_long += exif.gps_longitude[1].to_f / 60
  ##  base_long += exif.gps_longitude[2].to_f / 3600
  ##   => -122.401845
  ##
  def geo_image_fixture_path
    File.join(File.dirname(__FILE__),'1.jpg')
  end
  def non_geo_image_fixture_path
    File.join(File.dirname(__FILE__),'non_geo.jpg')
  end
end

RSpec.configure do |config|
  config.include Helper
end
