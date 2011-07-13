class ExtractGeoDataObserver < ActiveRecord::Observer
  observe GeoPhoto
  def after_create(geo_photo)
    path = geo_photo.file.current_path
    if File.extname(path).upcase == '.JPG'
      exif = EXIFR::JPEG.new(path).exif.first 
      unless exif.nil?
        geo_photo.longitude = GeoExif::decimal_longitude(exif)
        geo_photo.latitude  = GeoExif::decimal_latitude(exif)
        geo_photo.save!
      end
    end
  end

  module GeoExif 
    class << self
      def decimal_latitude(exif)
        base_lat  = exif.gps_latitude[0].to_f
        base_lat += exif.gps_latitude[1].to_f / 60 # minutes ?
        base_lat += exif.gps_latitude[2].to_f / 3600 #seconds ? 
        if exif.gps_latitude_ref == 'S'
          base_lat = base_lat * -1
        end
        base_lat
      end

      def decimal_longitude(exif)
        base_long  = exif.gps_longitude[0].to_f
        base_long += exif.gps_longitude[1].to_f / 60
        base_long += exif.gps_longitude[2].to_f / 3600
        if exif.gps_longitude_ref == 'W'
          base_long = base_long * -1
        end
        base_long
      end
    end
  end


end
