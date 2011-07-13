module Helper
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
