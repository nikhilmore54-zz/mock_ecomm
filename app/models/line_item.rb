class LineItem < ApplicationRecord
  belongs_to :photo
  belongs_to :cart
end
