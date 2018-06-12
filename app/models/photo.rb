class Photo < ApplicationRecord
  include ImageUploader[:image]

  belongs_to :user, optional: true
  has_many :line_items
end
