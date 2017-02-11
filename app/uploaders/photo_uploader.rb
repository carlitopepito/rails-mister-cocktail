class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process eager: true

  process convert: 'jpg'

  version :standard do
    resize_to_fit 600, 400
  end

  version :card do
    resize_to_fit 400, 300
  end
end
