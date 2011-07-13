class GeoPhoto < ActiveRecord::Base
  mount_uploader :file, PhotoUploader
end
