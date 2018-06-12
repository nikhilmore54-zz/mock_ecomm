require 'image_processing/mini_magick'
require 'fastimage'

class ImageUploader < Shrine
  include ImageProcessing::MiniMagick

  # plugin :determine_mime_type
  # plugin :cached_attachment_data
  # plugin :remove_attachment
  # plugin :delete_raw

  plugin :activerecord
  plugin :determine_mime_type
  plugin :logging, logger: Rails.logger
  plugin :remove_attachment
  plugin :store_dimensions
  plugin :validation_helpers
  plugin :versions, names: [:original, :thumb]
  plugin :processing

  process(:store) do |io, context|
    original = io.download
    pipeline = ImageProcessing::MiniMagick.source(original)

    thumb = pipeline.resize_to_limit!(300, 300)

    original.close!

    { original: io, thumb: thumb }
  end

  Attacher.validate do 
    validate_max_size 1.megabyte, message: "is too large (max is 1 MB)"
    validate_mime_type_inclusion ['image/jpg', 'image/jpeg', 'image/png']
  end
end