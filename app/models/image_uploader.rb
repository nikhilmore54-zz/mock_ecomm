require 'image_processing/mini_magick'

class ImageUploader < Shrine
  include ImageProcessing::MiniMagick

  plugin :determine_mime_type
  plugin :cached_attachment_data
  plugin :remove_attachment
  plugin :delete_raw

  Attacher.validate do 
    validate_max_size 1.megabyte, message: "is too large (max is 1 MB)"
    validate_mime_type_inclusion ['image/jpg', 'image/jpeg', 'image/png']
  end

  process(:store) do |io, context|
    { original: io, thumb: resize_to_limit!(io.download, 300, 300) }
  end
end