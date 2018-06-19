class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  belongs_to :order

  def add_photo(photo)
    current_item = line_items.find_by(photo_id: photo.id)
    if current_item
      current_item.increment(:quantity)
    else 
      current_item = line_items.build(photo_id: photo.id)
    end
    current_item
  end
end
